local prox = script.Parent
local repst = game:GetService("ReplicatedStorage")
local remote = repst:WaitForChild("RemoteEvent")
local gui = prox.Script.quest5
local somestuff = {}

-- cleans players
game.Players.PlayerRemoving:Connect(function(plr)
	somestuff[plr] = nil
end)

prox.Triggered:Connect(function(player)
	if not player.ResetSecurityProtocol or player.ResetSecurityProtocol.Value == true or somestuff[player] == true then return end

	somestuff[player] = true
	gui:Clone().Parent = player.PlayerGui
	player.Character.Humanoid.WalkSpeed = 0

	-- Store the connection to disconnect it
	local connection
	connection = remote.OnServerEvent:Connect(function(plr, taskss, state)
		if plr ~= player then return end -- ignore other players' events
		if taskss == "Quest5" and state == "Complete" then
			player.ResetSecurityProtocol.Value = true
			player.Character.Humanoid.WalkSpeed = 16
		else
			player.Character.Humanoid.WalkSpeed = 16
			player.Character.Humanoid.Health -= 15
		end
		somestuff[player] = nil
		connection:Disconnect() -- clean up listener
	end)

	player.Character.Humanoid.Died:Connect(function()
		somestuff[player] = nil
		player.Character.Humanoid.WalkSpeed = 16
		connection:Disconnect()
	end)
end)
