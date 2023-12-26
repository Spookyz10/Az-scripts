repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild('Loaded').Value == true

if workspace:FindFirstChild('Falling Leaves') then
print("waiting tp")
else do
repeat wait() until
(#game:GetService("Workspace"):WaitForChild('Mobs'):GetChildren()) > 0

wait(0.1)
game.Workspace.azvaro_gamer.HumanoidRootPart.Anchored = false
wait(0.5)
local mob = game:GetService("Workspace"):WaitForChild('Mobs'):FindFirstChildWhichIsA("Model")

game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = mob.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
wait(0.2)
while true do
local args = {
    [1] = "R032"
}

game:GetService("ReplicatedStorage").Events.ActivateRuneSkill:FireServer(unpack(args))

local args = {
    [1] = "iceking"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ActivateSwordSkill"):FireServer(unpack(args))
wait()
end
end
end
