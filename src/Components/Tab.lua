local Tab = {}
Tab.__index = Tab

local Thallium = script:FindFirstAncestor("Thallium")
local App = require(Thallium.Components.App)

-- Assets
local Container = Thallium.Assets.Tab.Container
local TabButton = Thallium.Assets.Tab.TabButton

function Tab:new(name)
    local self = setmetatable({}, Tab)

    local container = Container:Clone()
        container.Parent = App:GetWindowContainer()
    local button = TabButton:Clone()
        button.Parent = App:GetTabContainer()
        button.Text = name
    
    self.Container = container
    self.Button = button

    return self
end

return Tab
