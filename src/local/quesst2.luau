local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local repst = game:GetService("ReplicatedStorage")
local remote = repst:WaitForChild("RemoteEvent")

local gui = script.Parent
local goal = gui.Frame.goal
local part = gui.Frame.part
local value = 0

-- Positions
local startPos = UDim2.new(-0.002, 0, -0.008, 0)
local endPos = UDim2.new(0.979, 0, -0.008, 0)

-- Tween part back and forth
local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1, true)
local tween = TweenService:Create(part, tweenInfo, {Position = endPos})
part.Position = startPos
tween:Play()

-- Move goal to a random X position
local function moveGoalRandom()
	local randomX = math.random() * (0.82 - (-0.001)) + (-0.001)
	local newPos = UDim2.new(randomX, 0, -0.008, 0)
	goal.Position = newPos
end


-- Click anywhere check
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local partPos = part.AbsolutePosition
		local partSize = part.AbsoluteSize
		local goalPos = goal.AbsolutePosition
		local goalSize = goal.AbsoluteSize

		local overlapX = partPos.X < goalPos.X + goalSize.X and partPos.X + partSize.X > goalPos.X
		local overlapY = partPos.Y < goalPos.Y + goalSize.Y and partPos.Y + partSize.Y > goalPos.Y

		print("Value: ",value)
		if overlapX and overlapY then
			print("yay")
			if value >= 10 then
				gui.Parent:Destroy()
				remote:FireServer("Quest2","Complete")
			end
			value += 1
			moveGoalRandom()
		else
			print("aw")
			gui.Parent:Destroy()
			remote:FireServer("Quest2","Fail")
			
		end
	end
end)
