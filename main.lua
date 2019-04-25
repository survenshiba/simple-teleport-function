local function tp(...)
	local chr = game:service'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
	local root = chr:WaitForChild("HumanoidRootPart")
	local args = {...}
	if typeof(args[1]) == "number" then
		root.CFrame = CFrame.new(args[1], args[2], args[3])
	else
		root.CFrame = CFrame.new(args[1].Position)
	end
end
wait(3)
tp(500, 141, 591) --Teleports LocalPlayer to 500, 141, 591
wait(1)
tp(workspace.Baseplate) --Teleports LocalPlayer to workspace.Baseplate
