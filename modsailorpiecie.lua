loadstring(game:HttpGet("https://raw.githubusercontent.com/leduy100414/MODTRIS/refs/heads/main/modsailorpiecie.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "TRISTANVNMOD",
        Animation = "Youtube: TRISTANVN"
    },
    Key = {
        KeySystem = false,
        Title = "HeThongKhoa",
        Keys = {"1234"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Running the Script...",
            Incorrectkey = "The key is incorrect"
        }
    }
})

MinimizeButton({
    Image = "https://tr.rbxcdn.com/180DAY-06ee6472e0fb2bccc53d21ef97ea9d55/150/150/Image/Webp/noFilter",
    Size = {60,15},
    Color = Color3.fromRGB(0,255,200),
    Corner = true
})

-- TAB
local Tab1o = MakeTab({Name = "Farm Boss"})
local Tab2o = MakeTab({Name = "Speed"})
local Tab3o = MakeTab({Name = "Size"})

--------------------------------------------------
-- 💀 FARM BOSS
AddButton(Tab1o, {
    Name = "Start Farm",
    Callback = function()
        local Settings = {
            JoinTeam = "Haki",
            Translator = true
        }

        loadstring(game:HttpGet("https://raw.githubusercontent.com/leduy100414/MODTRIS/refs/heads/main/farmboss.lua"))()(Settings)
    end
})

--------------------------------------------------
-- ⚡ SPEED
AddButton(Tab2o, {
    Name = "Speed 50",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:WaitForChild("Humanoid")

        humanoid.WalkSpeed = 50
    end
})

--------------------------------------------------
-- 📏 SIZE SYSTEM
local currentSize = 2

local function applySize()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/leduy100414/MODTRIS/refs/heads/main/resize.lua"))()({
        Size = currentSize
    })
end

-- ➕
AddButton(Tab3o, {
    Name = "Size +2",
    Callback = function()
        currentSize = currentSize + 2
        applySize()
    end
})

-- ➖
AddButton(Tab3o, {
    Name = "Size -2",
    Callback = function()
        currentSize = currentSize - 2
        if currentSize < 0.5 then currentSize = 0.5 end
        applySize()
    end
})

-- 🔄 RESET
AddButton(Tab3o, {
    Name = "Reset Size",
    Callback = function()
        currentSize = 1
        applySize()
    end
})
