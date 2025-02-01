--// example 
local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/xhh4/Promisessence/refs/heads/main/Notification/Library.lua"))()

--// basic notify
notifications.new_notification("Hello world!", 5, Color3.fromRGB(255, 0, 0))

--// multiple notifications
notifications.new_notification("First notification")
task.wait(1)
notifications.new_notification("Second notification")
task.wait(1)
notifications.new_notification("Third notification")
