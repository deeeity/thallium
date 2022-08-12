local App = {}

local Thallium = script:FindFirstAncestor("Thallium")
local CoreGui = game:GetService("CoreGui")
local Tab = require(Thallium.Components.Tab)

-- Assets
local GUI = Thallium.Assets.ThalliumGUI

function App:GetGUI()
    return GUI
end

function App:GetWindowContainer()
    return GUI.Main.Hacks.Windows
end

function App:GetTabContainer()
    return GUI.Main.Hacks.Tabs.Holder
end

function App:SetTitle(title)
    GUI.Main.TitleBar.Title.Text = "Th | " .. title
    return App
end

function App:AddTab(name)
    Tab:new(name)
    return App
end

function App:Init()
    GUI.Parent = CoreGui
    return App
end

return App