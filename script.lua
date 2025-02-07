script_key="UR_KEY_HERE";
getgenv().Promisessence = {
    -- Camlock configuration for camera control
    Camlock = {
        Enabled = true,          -- Toggles camlock
        Binding = {
            Key = Enum.KeyCode.Q, -- Key to toggle/hold
            Mode = "Toggle"       -- Toggle or Hold mode
        },
        Prediction = {
            Enabled = true,       -- Toggles prediction
            Amount = 0.06,        -- Prediction amount
            Prediction_Method = "Velocity" -- Prediction calculation method
        },
        Smoothness = 1,          -- Camera smoothing amount
        Hit_Part = "Head",       -- Target body part
        Jump_Offset = -1.5,      -- Jump height offset
        Easing = {
            Style = "Quad",      -- Easing style for smoothing
            Direction = "Out"    -- Easing direction
        },
        FOV = {
            Visible = false,     -- Shows FOV circle
            Color = Color3.new(1, 1, 1), -- Circle color
            Thickness = 1,       -- Circle thickness
            Radius = 250         -- Circle size
        }
    },
 
    -- Silent aim configuration for shot manipulation
    Silent = {
        Enabled = true,         -- Toggles silent aim
        Prediction = {
            Enabled = true,     -- Toggles prediction
            Amount = 0.06,      -- Prediction amount
            Prediction_Method = "Velocity" -- Prediction calculation method
        },
        Hit_Part = "Head",     -- Target body part
        Jump_Offset = -1.5,    -- Jump height offset
        Closest_Part = false,  -- Aims at closest part
        FOV = {
            Visible = true,    -- Shows FOV circle
            Color = Color3.new(1, 1, 1), -- Circle color
            Thickness = 1,     -- Circle thickness
            Radius = 250       -- Circle size
        }
    },
 
    -- Check configurations for target validation
    Checks = {
        Death = true,         -- Checks if target is dead
        Wall = false,         -- Checks for walls
        Resolver = {
            Enabled = true,   -- Toggles resolver
            Key = Enum.KeyCode.T -- Key to toggle resolver
        }
    },
 
    -- Movement enhancement configurations
    Movement = {
        Speed_Glitch = {
            Enabled = true,   -- Toggles speed glitch
            Key = Enum.KeyCode.Z, -- Key to toggle glitch
            Mode = "Third",   -- First or Third person mode
            Delay = 0.01     -- Delay between glitches
        },
        Walkspeed = {
            Enabled = true,   -- Toggles walkspeed
            Key = Enum.KeyCode.V, -- Key to toggle walkspeed
            Speed = 287      -- Walkspeed value
        },
        CFrame = {
            Enabled = true,   -- Toggles CFrame walk
            Key = Enum.KeyCode.X, -- Key to toggle CFrame
            Speed = 3        -- CFrame speed
        }
    },
 
    -- Visual configurations for UI and world appearance
    Visuals = {
        Watermark = {
            Enabled = true,  -- Shows watermark
            Text = "Promisessence | Invite: discord.gg/x6qb", -- Watermark text
            Font = 2,       -- Text font
            Size = 13,      -- Text size
            Color = Color3.new(1, 1, 1), -- Text color
            Position = "Middle_Left" -- Screen position
        },
        Keybinds = {
            Enabled = true, -- Shows keybinds
            Color = Color3.new(1, 1, 1) -- Keybind color
        },
        Ambience = {
            Enabled = false, -- Toggles ambience
            Outdoor = Color3.fromRGB(33, 33, 33), -- Outside lighting
            Indoor = Color3.fromRGB(33, 33, 33)  -- Inside lighting
        },
        Textures = {
            Enabled = false, -- Toggles textures
            Material = Enum.Material.Sand, -- World material
            Color = Color3.fromRGB(194, 178, 128) -- World color
        },
        Tracers = {
            Enabled = true, -- Toggles tracers
            Color = Color3.new(1, 1, 1), -- Tracer color
            Thickness = 1,  -- Line thickness
            Transparency = 1 -- Line transparency
        }
    },
 
    -- Miscellaneous configurations
    Misc = {
        Inventory_Sorter = {
            Enabled = true, -- Toggles inventory sorter
            Keybind = Enum.KeyCode.Equals, -- Key to sort inventory
            ['Slot 1'] = "[Double-Barrel SG]", -- Weapon in slot 1
            ['Slot 2'] = "[Revolver]", -- Weapon in slot 2 
            ['Slot 3'] = "[Cookie]", -- Item in slot 3
            ['Slot 4'] = "[Chicken]", -- Item in slot 4
            ['Slot 5'] = "[Chicken]", -- Item in slot 5
            ['Slot 6'] = "[Pizza]", -- Item in slot 6
            ['Slot 7'] = "[Pizza]", -- Item in slot 7
            ['Slot 8'] = "", -- Empty slot
            ['Slot 9'] = "", -- Empty slot
            ['Slot 0'] = "[Katana]" -- Weapon in slot 0
        },
        Spin_360 = {
            Enabled = true,   -- Toggles 360 feature
            Key = Enum.KeyCode.H, -- Key to toggle 360
            Speed = 4700     -- 360 rotation speed
        },
        Blatant_Desync = {    
            Enabled = true,   -- Enables/disables blatant desync
            Key = Enum.KeyCode.Y, -- Key to toggle desync
            X = 16384,        -- X axis desync intensity
            Y = 16384,        -- Y axis desync intensity
            Z = 16384         -- Z axis desync intensity
        },
        Anti_Aim = {          
            Enabled = true,   -- Enables/disables anti aim
            Key = Enum.KeyCode.K, -- Key to toggle anti aim
            X = 16384,        -- X axis rotation intensity
            Y = 16384,        -- Y axis rotation intensity
            Z = 16384         -- Z axis rotation intensity
        }
    }
 }
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6a2096b6b4e7f0e348b61983370e92d2.lua"))()
