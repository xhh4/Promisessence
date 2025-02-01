-- // notification system
local utility = {}

-- // services
local players = game:GetService("Players")
local tweenservice = game:GetService("TweenService")
local runservice = game:GetService("RunService")

-- // variables 
local player = players.LocalPlayer
local notifications = {}
local screen = Instance.new("ScreenGui")

-- // initialization
screen.Name = "NotificationsGui"
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- // protect gui
if syn and syn.protect_gui then
   syn.protect_gui(screen)
   screen.Parent = game:GetService("CoreGui")
elseif gethui then
   screen.Parent = gethui()
else
   screen.Parent = game:GetService("CoreGui")
end

utility.new_notification = function(text, duration, color)
   duration = duration or 5
   color = color or Color3.fromRGB(255, 0, 0)
   
   local notification = Instance.new("Frame")
   notification.Name = "Notification"
   notification.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
   notification.BorderColor3 = Color3.fromRGB(35, 35, 35)
   notification.BorderMode = Enum.BorderMode.Inset
   notification.Position = UDim2.new(1, 300, 0, 75) 
   notification.Size = UDim2.new(0, 300, 0, 40)
   notification.ZIndex = 2
   notification.Parent = screen

   local accent = Instance.new("Frame")
   accent.Name = "Accent"
   accent.BackgroundColor3 = color
   accent.BorderSizePixel = 0
   accent.Size = UDim2.new(0, 2, 1, 0)  
   accent.ZIndex = 3
   accent.Parent = notification

   local title = Instance.new("TextLabel")
   title.Name = "Title"
   title.BackgroundTransparency = 1
   title.Position = UDim2.new(0, 10, 0, 0)
   title.Size = UDim2.new(1, -10, 0, 20)
   title.Font = Enum.Font.Ubuntu
   title.Text = "promisessence"
   title.TextColor3 = color
   title.TextSize = 14
   title.TextXAlignment = Enum.TextXAlignment.Left
   title.ZIndex = 4
   title.Parent = notification

   local message = Instance.new("TextLabel") 
   message.Name = "Message"
   message.BackgroundTransparency = 1
   message.Position = UDim2.new(0, 10, 0, 20)
   message.Size = UDim2.new(1, -10, 0, 20)
   message.Font = Enum.Font.Ubuntu
   message.Text = text
   message.TextColor3 = Color3.new(1, 1, 1)
   message.TextSize = 13
   message.TextXAlignment = Enum.TextXAlignment.Left
   message.ZIndex = 4
   message.Parent = notification

   tweenservice:Create(notification, TweenInfo.new(0.2), {Position = UDim2.new(1, -310, 0, 75)}):Play()

   table.insert(notifications, notification)
   utility.update_notifications()

   task.delay(duration, function()
       tweenservice:Create(notification, TweenInfo.new(0.2), {Position = UDim2.new(1, 300, notification.Position.Y.Scale, notification.Position.Y.Offset)}):Play()
       task.wait(0.2)
       table.remove(notifications, table.find(notifications, notification))
       notification:Destroy()
       utility.update_notifications() 
   end)
end

utility.update_notifications = function()
   for i, notification in next, notifications do
       tweenservice:Create(notification, TweenInfo.new(0.2), {Position = UDim2.new(1, -310, 0, 75 + (i - 1) * 45)}):Play()
   end
end

return utility
