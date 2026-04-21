local frame = script.Parent
local space = frame.Space
local dvd = space.dvd

local sizeSpace = space.AbsoluteSize
local velocity = Vector2.new(2, 2)
local amount = 0
local function randomTeleport()
	sizeSpace = space.AbsoluteSize
	local dvdSize = dvd.AbsoluteSize
	local newX = math.random(0, math.max(0, sizeSpace.X - dvdSize.X))
	local newY = math.random(0, math.max(0, sizeSpace.Y - dvdSize.Y))
	dvd.Position = UDim2.new(0, newX, 0, newY)
	-- Randomize direction after teleport
	local speedX = math.random(1, 3) * (math.random() > 0.5 and 1 or -1)
	local speedY = math.random(1, 3) * (math.random() > 0.5 and 1 or -1)
	velocity = Vector2.new(speedX, speedY)
end

dvd.Activated:Connect(function()
	amount += 1
	print(amount)

	if amount == 25 then
		frame:Destroy()
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Quest5", "Complete")
	elseif amount % 5 == 0 then
		randomTeleport()
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
	sizeSpace = space.AbsoluteSize
	local pos = dvd.Position
	local dvdSize = dvd.AbsoluteSize
	local newX = pos.X.Offset + velocity.X
	local newY = pos.Y.Offset + velocity.Y

	-- Bounce off left/right edges
	if newX <= 0 then
		newX = 0
		velocity = Vector2.new(math.abs(velocity.X), velocity.Y)
	elseif newX + dvdSize.X >= sizeSpace.X then
		newX = sizeSpace.X - dvdSize.X
		velocity = Vector2.new(-math.abs(velocity.X), velocity.Y)
	end

	-- Bounce off top/bottom edges
	if newY <= 0 then
		newY = 0
		velocity = Vector2.new(velocity.X, math.abs(velocity.Y))
	elseif newY + dvdSize.Y >= sizeSpace.Y then
		newY = sizeSpace.Y - dvdSize.Y
		velocity = Vector2.new(velocity.X, -math.abs(velocity.Y))
	end

	dvd.Position = UDim2.new(0, newX, 0, newY)
end)
