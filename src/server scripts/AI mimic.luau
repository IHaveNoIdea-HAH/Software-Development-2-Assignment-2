local runserv = game:GetService("RunService")
local pathfinding = game:GetService("PathfindingService")
local npc= script.Parent
local humanoid = npc.Humanoid


local waypoint= workspace.Waypoint


--[[
=======================================================================================
==========================			Path definer			==========================
=======================================================================================
]]
local path = pathfinding:CreatePath({ --creates path
	AgentCanJump = true, --defines if the the character can jump
	AgentCanClimb = true, --defines if character can climbs trusss
	AgentRadius = 5, --defines how far the character will detect stuff or seomthing 
	AgentHeight = 5, --basically radius but its for heights 

	Costs = { --costs is the value of what the character pathway should be, 1 being default meaning the pathway will be created on that materail, The more value the less its priotised
		KillBrick = math.huge,
		dangerzone = math.huge,
		door = 2
	},
})
--=======================================================================================


local reachedgoal
local timelimit = 5
local npcdistance = npc.PrimaryPart.Position --gets the npc position

local Players = game:GetService("Players")

local function detectplayer()
	local nearestPlayer = nil
	local shortestDistance = 50 -- Chase range

	for _, player in pairs(Players:GetPlayers()) do
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local distance = (npc.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
			if distance < shortestDistance then
				shortestDistance = distance
				nearestPlayer = player
			end
		end
	end

	return nearestPlayer -- Returns the player or nil
end

local function findingpathway(goal)
	local success, err = pcall(function() -- used to prevent crasehs
		path:ComputeAsync(npc.PrimaryPart.Position, goal.Position) --used to pathfind
	end)

	if success and path.Status == Enum.PathStatus.Success then
		print("Pathfinding success")
		pathway(goal) -- Follow the path with proper blocking handling
		return true
	else
		warn(err)
		wait(1)
		findingpathway(goal) -- Retry
	end
end

-- make way point name in order. Example: Waypoint1, Waypoint2, Waypoint3
-- instead of example: Waypoin3, Waypoint1, Waypoint2
local children = waypoint:GetChildren()
table.sort(children, function(a,b)
	return a.Name < b.Name
end)
local chasing = false

local function chasePlayer(player)
	chasing = true
	local connection
	local moveStartTime = 0
	local currentTarget = nil

	connection = runserv.Heartbeat:Connect(function()
		local detected = detectplayer()
		if not detected or not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
			chasing = false
			connection:Disconnect()
			return
		end

		local success, err = pcall(function()
			path:ComputeAsync(npc.PrimaryPart.Position, player.Character.HumanoidRootPart.Position)
		end)

		if success and path.Status == Enum.PathStatus.Success then
			local waypoints = path:GetWaypoints()
			if waypoints[2] then
				local nextWaypoint = waypoints[2].Position

				-- If target changed or 5 seconds passed without reaching it, reissue MoveTo
				local timeSinceMove = tick() - moveStartTime
				local targetChanged = currentTarget == nil or (currentTarget - nextWaypoint).Magnitude > 1

				if targetChanged or timeSinceMove >= 5 then
					print("Retrying waypoint calculation")
					humanoid:MoveTo(nextWaypoint)
					currentTarget = nextWaypoint
					moveStartTime = tick()
				end
			end
		else
			-- Fallback: directly walk toward player
			humanoid:MoveTo(player.Character.HumanoidRootPart.Position)
			
			moveStartTime = tick()
		end
	end)

	while chasing do task.wait() end
end
function pathway(goal)
	local pathblocked = false
	local block
	block = path.Blocked:Connect(function(index)
		pathblocked = true
		humanoid:MoveTo(npc.PrimaryPart.Position)
		block:Disconnect()
		findingpathway(goal)
	end)

	for i, wp in pairs(path:GetWaypoints()) do
		if pathblocked then break end
		if detectplayer() then break end -- bail out of patrol if player spotted
		humanoid:MoveTo(wp.Position)
		local reached = humanoid.MoveToFinished:Wait(5)
		if not reached then
			print("Failed to reach waypoint")
			break
		end
	end

	if block then block:Disconnect() end
end

while task.wait(0.5) do
	local detectedPlayer = detectplayer()
	if detectedPlayer then
		chasePlayer(detectedPlayer) -- blocking chase loop until player leaves range
	else
		for i, v in ipairs(children) do
			if detectplayer() then break end
			findingpathway(v)
		end
	end
end
