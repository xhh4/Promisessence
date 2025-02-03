script_key="UR_KEY_HERE";
-- // config table
getgenv().Promisessence = {
    -- // camlock configuration
    Camlock = {
        Enabled = true, -- // toggles camlock
        Binding = {
            Key = Enum.KeyCode.Q, -- // key to toggle/hold  
            Mode = "Toggle" -- // toggle, hold
        },
        Prediction = {
            Enabled = true, -- // toggles prediction
            Amount = 0.06 -- // prediction amount
        },
        Smoothness = 1, -- // camera smoothing amount
        Hit_Part = "Head", -- // target part 
        Easing = {
            Style = "Quad", -- // linear, quad, cubic, sine, back
            Direction = "Out" -- // in, out, inout
        },
        FOV = {
            Visible = false, -- // shows fov circle
            Color = Color3.new(1, 1, 1), -- // circle color
            Thickness = 1, -- // circle thickness  
            Radius = 250 -- // circle size
        }
    },
 
    -- // silent aim configuration
    Silent = {
        Enabled = true, -- // toggles silent aim
        Prediction = {
            Enabled = true, -- // toggles prediction
            Amount = 0.06 -- // prediction amount
        },
        Hit_Part = "Head", -- // target part
        Closest_Part = false, -- // aims at closest part
        FOV = {
            Visible = true, -- // shows fov circle
            Color = Color3.new(1, 1, 1), -- // circle color
            Thickness = 1, -- // circle thickness
            Radius = 250 -- // circle size
        }
    },
 
    -- // mouse teleport configuration  
    Mouse_TP = {
        Enabled = false, -- // toggles mouse teleport
        Use_Prediction = true, -- // uses prediction
        Method = "Jumping", -- // jumping, health
        Part = "HumanoidRootPart", -- // teleport part
        Prediction = {
            Enabled = true, -- // toggles prediction 
            Amount = 0.918 -- // prediction amount
        },
        Health = 25, -- // health threshold
        Jump_Delay = 0.81 -- // delay after jump
    },
 
    -- // check configuration
    Checks = {
        Death = true, -- // checks if target is dead
        Wall = false, -- // checks for walls
        Resolver = {
            Enabled = true, -- // toggles resolver
            Key = Enum.KeyCode.T -- // key to toggle resolver
        }
    },
 
    -- // movement configuration
    Movement = {
        Speed_Glitch = {
            Enabled = true, -- // toggles speed glitch
            Key = Enum.KeyCode.Z, -- // key to toggle glitch
            Mode = "Third", -- // first, third
            Delay = 0.01 -- // delay between glitches
        },
        Walkspeed = {
            Enabled = true, -- // toggles walkspeed modification
            Key = Enum.KeyCode.V, -- // key to toggle walkspeed
            Speed = 90 -- // walkspeed value
        }
    },
 
    -- // visual configuration  
    Visuals = {
        Watermark = {
            Enabled = true, -- // shows watermark
            Text = "Promisessence | Invite: discord.gg/x6qb", -- // watermark text
            Font = 2, -- // text font
            Size = 13, -- // text size
            Color = Color3.new(1, 1, 1), -- // text color
            Position = "Middle_Left" -- // screen position
        },
        Keybinds = {
            Enabled = true, -- // shows keybinds
            Color = Color3.new(1, 1, 1) -- // keybind color
        },
        Ambience = {
            Enabled = false, -- // toggles ambience
            Outdoor = Color3.fromRGB(33, 33, 33), -- // outside lighting
            Indoor = Color3.fromRGB(33, 33, 33) -- // inside lighting
        },
        Textures = {
            Enabled = false, -- // toggles textures
            Material = Enum.Material.Sand, -- // world material
            Color = Color3.fromRGB(194, 178, 128) -- // world color
        }
    },
 
    -- // misc configuration
    Misc = {
        Inventory_Sorter = {
            Enabled = true, -- // toggles inventory sorter
            Keybind = Enum.KeyCode.Equals, -- // key to sort inventory
            ['Slot 1'] = "[Double-Barrel SG]", -- // weapon in slot 1
            ['Slot 2'] = "[Revolver]", -- // weapon in slot 2
            ['Slot 3'] = "[Cookie]", -- // item in slot 3
            ['Slot 4'] = "[Chicken]", -- // item in slot 4
            ['Slot 5'] = "[Chicken]", -- // item in slot 5
            ['Slot 6'] = "[Pizza]", -- // item in slot 6
            ['Slot 7'] = "[Pizza]", -- // item in slot 7
            ['Slot 8'] = "", -- // empty slot
            ['Slot 9'] = "", -- // empty slot
            ['Slot 0'] = "[Katana]" -- // weapon in slot 0
        }
    }
 }
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6a2096b6b4e7f0e348b61983370e92d2.lua"))()
