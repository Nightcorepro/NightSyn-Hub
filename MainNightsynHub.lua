if game.PlaceId == 2753915549 or game.PlaceId == 79091703265657 or game.PlaceId == 100117331123089 then --Place IDs for Blox Fruits
    local Fluent, SaveManager, InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/Beta.lua"))()

    ---[Main Window]---
    local Window = Fluent:CreateWindow({
    Title = "Nightsyn Hub",
    SubTitle = "by Nightsyn",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.N
})

    ---[Tabs]---
    local Tabs = {
        Main = Window:AddTab({ Title = "Main", Icon = "home" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    ---[Options]---
    local Options = Fluent.Options

    ---[[Main Tab]]---

    do
     local MainSection = Tabs.Main:AddSection("Farm", "home") -- Title, Optional Icon

     Tabs.Main:AddDropdown("DropdownId", {
        Title = "Select Weapon",
        Values = {"A", "B", "C"},
        Multi = false,
        Default = "A",
        Search = true, -- Enable search
        AllowNull = false, -- Allow no selection (for Multi)
        Icon = "list",
        Callback = function(Value)
            print("Selected:", Value)
        end
     })

     Tabs.Main:AddToggle("ToggleId", {
        Title = "Auto Farm Level",
        Description = "Automatically farm levels",
        Default = false,
        Icon = "toggle-right",
        Callback = function(Value)
            print("State:", Value)
        end
     })

     Tabs.Main:AddSlider("SliderId", {
        Title = "Speed",
        Description = "Adjust speed",
        Default = 16,
        Min = 16,
        Max = 100,
        Rounding = 1,
        Icon = "activity",
        Callback = function(Value)
            print("Speed set to:", Value)
        end
     })
    end

    ---[[Settings Tab]]---
    do
        local MainSection = Tabs.Settings:AddSection("Themes", "") -- Title, Optional Icon

        Tabs.Settings:AddDropdown("DropdownId", {
           Title = "Themes",
           Values = {"Light", "Dark", "Darker", "AMOLED", "Balloon", "SoftCream", "Aqua", "Amethyst", "Rose", "Midnight", "Forest", "Sunset", "Ocean", "Emerald", "Sapphire", "Cloud", "Grape", "Bloody", "Arctic",},
           Multi = false,
           Default = "Dark",
           Search = true, -- Enable search
           AllowNull = false, -- Allow no selection (for Multi)
           Icon = "palette",
           Callback = function(Value)
               Fluent:SetTheme(Value)
               print("Theme set to:", Value)
           end
        })
    end

    Window:SelectTab(1) --Default tab

    ---[Notifications]---
    Fluent:Notify({
        Title = "Nightsyn Hub",
        Description = "Loaded successfully!",
        Duration = 10,
        Icon = "check"
    })

    -- Handle SaveManager
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)

    -- Ignore specific keys
    SaveManager:IgnoreThemeSettings()

    -- Use auto-loading
    SaveManager:SetFolder("MightsynScriptHub")
    SaveManager:BuildConfigSection(Tabs.Settings)
else
    game.Players.LocalPlayer:Kick("This script is only for Blox Fruits")
    return
end
