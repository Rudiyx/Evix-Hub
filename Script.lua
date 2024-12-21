local AnalyticsService = game:GetService("AnalyticsService")
local CollectionService = game:GetService("CollectionService")
local DataStoreService = game:GetService("DataStoreService")
local HttpService = game:GetService("HttpService")
local Lighting = game:GetService("Lighting")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local StarterPack = game:GetService("StarterPack")
local StarterPlayer = game:GetService("StarterPlayer")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")
local Teams = game:GetService("Teams")
local VirtualUser = game:GetService("VirtualUser")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    Fluent:Notify({
        Title = "Anti Afk",
        Content = "Roblox Has Tried To Kick Your For Being Afk!",
        Duration = 5 -- Set to nil to make the notification not disappear
    })
end)
Fluent:Notify({
    Title = "Anti Afk",
    Content = "Loaded Successfully",
    Duration = 5 -- Set to nil to make the notification not disappear
})

if game.PlaceId == 16732694052 then
     --<>----<>----<>----< Main Script >----<>----<>----<>--

    Fluent:Notify({
        Title = "Evix Hub",
        Content = "Evix Is Loading...",
        Duration = 7.5 -- Set to nil to make the notification not disappear
    })

local Window = Fluent:CreateWindow({
    Title = "Fisch | Evix Hub",
    SubTitle = "v1",
    TabWidth = 150,
    Size = UDim2.fromOffset(600, 400),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Options = Fluent.Options

local itemSpots = {
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Kings_Rod = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    Nocturnal_Rod = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Mythical_Rod = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    Midas_Rod = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    Trident_Rod = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    Enchated_Altar = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Quality_Bait_Crate = CFrame.new(-177.876, 144.472, 1932.844),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Basic_Diving_Gear = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    Fish_Radar = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}

-- Locals
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local Humanoid = LocalCharacter:FindFirstChild("Humanoid")
local ActiveFolder = Workspace:FindFirstChild("active")
local PlayerGUI = LocalPlayer:FindFirstChildOfClass("PlayerGui")

-- Creating tabs
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home", SubTitle = "See All Update Logs Here Etc..." }),
    Main = Window:AddTab({ Title = "Main", Icon = "code", SubTitle = "Here Are Main Features!"}),
    AutoFarm = Window:AddTab({ Title = "Auto-Farm", Icon = "box", SubTitle = "Auto Farm Features Like Auto Fish, Auto Sell Etc!"}),
    Character = Window:AddTab({ Title = "Character", Icon = "avatar", SubTitle = "You Can Change Your Character Info Like Walkspeed, Jump Height Etc"}),
    Teleports = Window:AddTab({ Title = "Teleports", Icon = "compass" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
    Premium = Window:AddTab({ Title = "Premium", Icon = "diamond" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Varbiables

local AutoFreeze = false
local autoShake = false
local AutoFish = false
local AutoZoneCast = false
local autoShakeDelay = 0.1
local autoReel = false
local AutoCast = false
local Noclip = false
local AntiDrown = false
local AutoSell = false
local AntiAfk = false

Tabs.Home:AddParagraph({
    Title = "Changelogs",
    Content = "[+] - Release"
})

local WalkSpeedSlider = Tabs.Character:AddSlider("Slider", {
    Title = "Walkspeed",
    Description = "Change Your Character Walkspeed",
    Default = 16,
    Min = 16,
    Max = 10000,
    Rounding = 1,
    Callback = function(Value)
        Humanoid.WalkSpeed = Value
    end
})

local JumpPowerSlider = Tabs.Character:AddSlider("Slider", {
    Title = "Jump Power",
    Description = "Change Your Character Jump Power",
    Default = 50,
    Min = 50,
    Max = 10000,
    Rounding = 1,
    Callback = function(Value)
        Humanoid.JumpPower = Value
    end
})
local teleportSpots = {
    Altar = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    Arch = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    Birch = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    Brine = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    Deep = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    DeepShop = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    Enchant = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    Executive = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    Keepers = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    Mod_House = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    Moosewood = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    Mushgrove = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    Roslit = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    Snow = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    Snowcap = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    Spike = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    Statue = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    Sunstone = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    Swamp = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    Terrapin = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    Trident = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    Vertigo = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Volcano = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    Wilson = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    Wilsons_Rod = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}
local IsleTpDropdown = Tabs.Teleports:AddDropdown("Dropdown", {
    Title = "Isles Teleport",
    Values = {"Altar", "Arch", "Birch", "Brine", "Deep", "DeepShop", "Enchant", "Executive", "Keepers", "Mod_House", "Moosewood", "Mushgrove", "Roslit", "Snow", "Snowcap", "Spike", "Statue", "Sunstone", "Swamp", "Terrapin", "Trident", "Vertigo", "Volcano", "Wilson", "Wilsons_Rod"},
    Multi = false,
    Default = nil,
})

IsleTpDropdown:OnChanged(function(Value)
    HumanoidRootPart.CFrame = teleportSpots[Value]
end)
else
    Fluent:Notify({
        Title = "Script Hub Not Found",
        Content = "Your Not In A Game That Is Supported By Evix",
        Duration = 5 -- Set to nil to make the notification not disappear
    })
end
