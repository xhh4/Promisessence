script_key="UR_KEY_HERE";
getgenv().Promisessence = {
    Camlock = {
        Enabled = true, -- // Toggles camlock
        Binding = {
            Key = Enum.KeyCode.Q, -- // Key to toggle/hold
            Mode = "Toggle" -- // Toggle, Hold  
        },
        Prediction = {
            Enabled = true, -- // Toggles prediction
            Amount = 0.06 -- // Prediction amount
        },
        Smoothness = 1, -- // Camera smoothing amount 
        Hit_Part = "Head", -- // Target part
        Easing = {
            Style = "Quad", -- // Linear, Quad, Cubic, Sine, Back
            Direction = "Out" -- // In, Out, InOut
        },
        FOV = {
            Visible = false, -- // Shows FOV circle
            Color = Color3.new(1, 1, 1), -- // Circle color
            Thickness = 1, -- // Circle thickness
            Radius = 250 -- // Circle size
        }
    },
    Silent = {
        Enabled = true, -- // Toggles silent aim
        Prediction = {
            Enabled = true, -- // Toggles prediction 
            Amount = 0.06 -- // Prediction amount
        },
        Hit_Part = "Head", -- // Target part
        Closest_Part = false, -- // Aims at closest part
        Closest_Point = true, -- // Aims at closest point
        FOV = {
            Visible = true, -- // Shows FOV circle
            Color = Color3.new(1, 1, 1), -- // Circle color
            Thickness = 1, -- // Circle thickness 
            Radius = 250 -- // Circle size
        }
    },
    Mouse_TP = {
        Enabled = false, -- // Toggles mouse teleport
        Use_Prediction = true, -- // Uses prediction
        Method = "Jumping", -- // Jumping, Health
        Part = "HumanoidRootPart", -- // Teleport part
        Prediction = {
            Enabled = true, -- // Toggles prediction
            Amount = 0.918 -- // Prediction amount
        },
        Health = 25, -- // Health threshold
        Jump_Delay = 0.81 -- // Delay after jump
    },
    Checks = {
        Death = true, -- // Checks if target is dead
        Wall = false, -- // Checks for walls
        Resolver = {
            Enabled = true, -- // Toggles resolver
            Key = Enum.KeyCode.T -- // Key to toggle resolver
        }
    },
    Movement = {
        Speed_Glitch = {
            Enabled = true, -- // Toggles speed glitch
            Key = Enum.KeyCode.Z, -- // Key to toggle glitch
            Mode = "Third", -- // First, Third
            Delay = 0.01 -- // Delay between glitches
        }
    },
    Visuals = {
        Watermark = {
            Enabled = true, -- // Shows watermark
            Text = "Promisessence | Invite: discord.gg/x6qb", -- // Watermark text
            Font = 2, -- // Text font
            Size = 13, -- // Text size
            Color = Color3.new(1, 1, 1), -- // Text color
            Position = "Middle_Left" -- // Screen position
        },
        Keybinds = {
            Enabled = true, -- // Shows keybinds
            Color = Color3.new(1, 1, 1) -- // Keybind color
        },
        Ambience = {
            Enabled = false, -- // Toggles ambience
            Outdoor = Color3.fromRGB(33, 33, 33), -- // Outside lighting
            Indoor = Color3.fromRGB(33, 33, 33) -- // Inside lighting
        },
        Textures = {
            Enabled = false, -- // Toggles textures
            Material = Enum.Material.Sand, -- // World material
            Color = Color3.fromRGB(194, 178, 128) -- // World color
        }
    },
    Misc = {
        Inventory_Sorter = {
            Enabled = true, -- // Toggles inventory sorter
            Keybind = Enum.KeyCode.Equals, -- // Key to sort inventory
            ['Slot 1'] = "[Double-Barrel SG]", -- // Weapon in slot 1
            ['Slot 2'] = "[Revolver]", -- // Weapon in slot 2 
            ['Slot 3'] = "[Cookie]", -- // Item in slot 3
            ['Slot 4'] = "[Chicken]", -- // Item in slot 4
            ['Slot 5'] = "[Chicken]", -- // Item in slot 5
            ['Slot 6'] = "[Pizza]", -- // Item in slot 6
            ['Slot 7'] = "[Pizza]", -- // Item in slot 7
            ['Slot 8'] = "", -- // Empty slot
            ['Slot 9'] = "", -- // Empty slot
            ['Slot 0'] = "[Katana]" -- // Weapon in slot 0
        }
    }
 }
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6a2096b6b4e7f0e348b61983370e92d2.lua"))()
