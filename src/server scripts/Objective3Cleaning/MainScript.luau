local dayend = workspace.DayEnded --keeps track if day ended
local puddlefolder = script.Parent.PuddleCreation --the place it will be added
local spawnpoint = script.Parent.SpawnPoint --spawnpoints
local puddle = script.Parent.Puddle -- to be clone




local function spawnpuddles()
	local spawnpoints = spawnpoint:GetChildren()
	for i = #spawnpoints, 2, -1 do --randomise it
		local j = math.random(i)
		spawnpoints[i], spawnpoints[j] = spawnpoints[j], spawnpoints[i]
	end

	for i = 1, #spawnpoints do
		local puddlecreation = puddle:Clone() 
		puddlecreation.Parent = puddlefolder  
		puddlecreation.CFrame = spawnpoints[i].CFrame --positions puddle
		puddlecreation.Anchored = true 
	end

end
spawnpuddles()--initiate when server starts
dayend.Changed:Connect(function() -- if value changed
	if dayend.Value then
		for _, v in ipairs(puddlefolder:GetChildren()) do
			v:Destroy() -- destroy every puddle
		end
	else
		spawnpuddles()
	end
end)
