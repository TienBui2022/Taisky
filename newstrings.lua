-- Tải thư viện UI từ GitHub
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({Name = "Blox Clone UI", HidePremium = false, SaveConfig = true, ConfigFolder = "BloxScript"})

-- TAB Auto Farm
local AutoFarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AutoFarmTab:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do
            wait(1)
            print("Đang Farm level...")
            -- Viết code farm ở đây
        end
    end
})

-- TAB Vũ khí
local WeaponTab = Window:MakeTab({
    Name = "Chọn Vũ Khí",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

WeaponTab:AddDropdown({
    Name = "Chọn Vũ Khí",
    Default = "Katana",
    Options = {"Katana", "Gun", "Blox Fruit"},
    Callback = function(Value)
        _G.SelectedWeapon = Value
        print("Đã chọn: "..Value)
    end
})

-- TAB Teleport
local TeleportTab = Window:MakeTab({
    Name = "Teleport",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TeleportTab:AddButton({
    Name = "Đảo Bandit",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 10, 100)
    end
})
