
--Made by : https://v3rmillion.net/member.php?action=profile&uid=244024
-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local main = library.new("richard sucks massive cock and eats dick", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- game handler
local teleport_table = {
   ["Kiribating Village"] = Vector3.new(97.00927734375, 283.2576904296875, -1748.0252685546875), 
   ["Testing Area"] = Vector3.new(100,10,100),
   ["Butterfly Mansion"] = Vector3.new(2978.104736328125, 316.00054931640625, -3872.41162109375),
   ["Zapiwara Mountain"] = Vector3.new(-313.73028564453125, 443.0830078125, -2384.51220703125),
   ["Slasher Demon"] = Vector3.new(4307.15380859375, 342.5894775390625, -4256.1611328125),
   ["Ushumaru Village"] = Vector3.new(-100.05873107910156, 354.1033020019531, -3115.310791015625),
   ["Ouwbayashi Home"] = Vector3.new(1503.2244873046875, 316.2838134765625, -4608.50390625),
   ["Kabiwaru Village"] = Vector3.new(1995.31103515625, 316.2838134765625, -2971.81005859375),
   ["Zapiwara Cave"] = Vector3.new(28.48184585571289, 276.2445373535156, -2419.127685546875),
   ["Wind Trainer"] = Vector3.new(1737.563232421875, 334.7139892578125, -3526.380615234375),
   ["Abubu Cave"] = Vector3.new(1049.261962890625, 275.8009033203125, -3419.8935546875),
   ["Waroru Cave"] = Vector3.new(603.615966796875, 278.54327392578125, -2562.02294921875),
   ["Final Selection"] = Vector3.new(5161.06396484375, 366.2320556640625, -2425.24609375),
   ["Nezuko"] = Vector3.new(3690.957275390625, 365.2213439941406, -4550.85888671875),

}
local rs = game:GetService('RunService')
local lp = game:GetService('Players').LocalPlayer

function bp_tp(v)
   if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then
       local playerPos = lp.Character.HumanoidRootPart.Position
       local dis = (playerPos - v).Magnitude
       local time = dis/150
       local ts = game:GetService('TweenService')
       local ti = TweenInfo.new(
           time,
           Enum.EasingStyle.Linear
       )
       local cf = CFrame.new(v)
       local a = ts:Create(
           lp.Character.HumanoidRootPart,
           ti,
           {CFrame=cf}
       )
       
       print("Player Position is ",playerPos)
     print("Distance between the player position and the location is ",dis)
     print("The time required in order to reach 50 speed is ", time)
       a:Play()
   end
end

-- first page
local page = main:addPage("Teleports", 5012544693)
local section1 = page:addSection("Locations")
--local section2 = page:addSection("Section 2")

--[[section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
]]

section1:addButton("Kiribating Village", function()
   bp_tp(teleport_table["Kiribating Village"])
end)

section1:addButton("Butterfly Mansion", function()
   bp_tp(teleport_table["Butterfly Mansion"])
end)

section1:addButton("Zapiwara Mountain", function()
   bp_tp(teleport_table["Zapiwara Mountain"])
end)

section1:addButton("Slasher Demon", function()
   bp_tp(teleport_table["Slasher Demon"])
end)

section1:addButton("Ushumaru Village", function()
   bp_tp(teleport_table["Ushumaru Village"])
end)

section1:addButton("Ouwbayashi Home", function()
   bp_tp(teleport_table["Ouwbayashi Home"])
end)

section1:addButton("Kabiwaru Village", function()
   bp_tp(teleport_table["Kabiwaru Village"])
end)

section1:addButton("Zapiwara Cave", function()
   bp_tp(teleport_table["Zapiwara Cave"])
end)

section1:addButton("Wind Trainer", function()
   bp_tp(teleport_table["Wind Trainer"])
end)

section1:addButton("Abubu Cave", function()
   bp_tp(teleport_table["Abubu Cave"])
end)

section1:addButton("Waroru Cave", function()
   bp_tp(teleport_table["Waroru Cave"])
end)

section1:addButton("Final Selection", function()
   bp_tp(teleport_table["Final Selection"])
end)

section1:addButton("Nezuko", function()
   bp_tp(teleport_table["Nezuko"])
end)

section1:addButton("Secret Area", function()
   bp_tp(teleport_table["Testing Area"])
end)

--[[
section1:addTextbox("Notification", "Default", function(value, focusLost)
print("Input", value)

if focusLost then
main:Notify("Title", value)
end
end)


section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
main:toggle()
end, function()
print("Changed Keybind")
end)
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3})
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
   print("Selected", text)
end)
section2:addButton("Button")

-- second page
local theme = main:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
main:setTheme(theme, color3)
end)
end
]]
-- load
local misc = main:addPage("Misc", 5012544693)
local modifers = misc:addSection("Modifiers (Press these once!)")
local pop = misc:addSection("Extra")

modifers:addButton("Infinite Stamina", function()
   getgenv().InfiniteStam = true

    local PlayerValues = game:GetService("ReplicatedStorage").PlayerValues[lp.Name]
    local Stamina = PlayerValues.Stamina

    OldNewIndex = hookmetamethod(game, "__newindex", function(self, index, value)
        if InfiniteStam and checkcaller() == false then
            if (self == Stamina) and index == "Value" then
                value = 1000
            end
        end
        return OldNewIndex(self, index, value)
    end)
end)

modifers:addButton("Infinite Breathing", function()
   getgenv().InfiniteBreath = true

    local PlayerValues2 = game:GetService("ReplicatedStorage").PlayerValues[lp.Name]
    local Breath = PlayerValues2.Breath

    OldNewIndex2 = hookmetamethod(game, "__newindex", function(self2, index2, value2)
        if InfiniteBreath and checkcaller() == false then
            if (self2 == Breath) and index2 == "Value" then
                value2 = 1000
            end
        end
        return OldNewIndex2(self2, index2, value2)
    end)
end)

pop:addButton("Destroy GUI", function()
   main:Destroy()
end)


main:SelectPage(main.pages[1], true) -- no default for more freedomaw