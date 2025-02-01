--// load lib
local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/xhh4/Promisessence/refs/heads/main/Notification/Library.lua"))()

--// basic notify
notifications.new_notification("Hello world!", 5, Color3.fromRGB(173, 216, 230))

--// custom title
notifications.new_notification("Hello world!", 5, Color3.fromRGB(173, 216, 230), "Custom Title")

--// multiple notifs
notifications.new_notification("First notification", 5, Color3.fromRGB(255, 0, 0))
task.wait(1)
notifications.new_notification("Second notification", 5, Color3.fromRGB(0, 255, 0)) 
task.wait(1)
notifications.new_notification("Third notification", 5, Color3.fromRGB(0, 0, 255))
