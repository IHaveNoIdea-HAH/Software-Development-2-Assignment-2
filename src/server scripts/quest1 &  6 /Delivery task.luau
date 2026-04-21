local part = script.Parent
local repstorage = game:GetService("ReplicatedStorage")

local tasks = 0



local function spawnblock(player)
	local part2 = Instance.new("Part")
	part2.Parent = workspace
	part2.Position = part.Parent.Parent.spawn.Position - Vector3.new(math.random(-5,5),0,math.random(-5,5))
	tasks +=1
	
end
local function removeItem(player, itemName)
	if not player.Delivery or player.Delivery.Value == true then return end
	
	local inBackpack = player.Backpack:FindFirstChild(itemName)
	if inBackpack then
		inBackpack:Destroy()
		spawnblock(player)
		player.leaderstats.Money.Value += 10
	end
	

	
	local inCharacter = player.Character:FindFirstChild(itemName)
	if inCharacter then
		inCharacter:Destroy()
		spawnblock(player)
		player.leaderstats.Money.Value += 10
	end
	if tasks == 5 then
		part.Parent:Destroy()
		player.Delivery.Value =true
	end
end

part.Triggered:Connect(function(player)
	
	removeItem(player, "Box")  
end)
