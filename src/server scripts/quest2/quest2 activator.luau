local prox = script.Parent
local repst = game:GetService("ReplicatedStorage")
local remote = repst:WaitForChild("RemoteEvent")
local gui = prox.Script.quest
local somestuff = {}

game.Players.PlayerRemoving:Connect(function(plr)
	somestuff[plr] = nil
end)

prox.Triggered:Connect(function(player)
	if not player.FixCam or player.FixCam.Value == true or somestuff[player] == true then return end

	somestuff[player] = true
	gui:Clone().Parent = player.PlayerGui
	player.Character.Humanoid.WalkSpeed = 0

	local connection
	connection = remote.OnServerEvent:Connect(function(plr, taskss, state)
		if plr ~= player then return end
		if taskss == "Quest2" and state == "Complete" then
			player.FixCam.Value = true
			player.Character.Humanoid.WalkSpeed = 16
			print("Yay you quest 2")
		else
			print("Fail")
			player.Character.Humanoid.WalkSpeed = 16
			player.Character.Humanoid.Health -= 15
		end
		somestuff[player] = nil
		connection:Disconnect()
	end)

	player.Character.Humanoid.Died:Connect(function()
		somestuff[player] = nil
		player.Character.Humanoid.WalkSpeed = 16
		connection:Disconnect()
	end)
end)
