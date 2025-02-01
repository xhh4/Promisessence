-- // notification library
local utility = {}

-- // services
local tweenservice = game:GetService("TweenService")
local runservice = game:GetService("RunService")

-- // variables
local notifications = {}
local notificationcontainer = Instance.new("ScreenGui", gethui())

-- // functions
utility.tween = function(...)
   local tween = tweenservice:Create(...)
   tween:Play()
   return tween
end

utility.update_notifications = function()
   local i = 0
   for notification in next, notifications do
       if notification.holder then
           utility.tween(notification.holder, TweenInfo.new(0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 20, 0, 75 + (i * 25))})
           i = i + 1
       end
   end
end

utility.cleanup_notification = function(notification)
   for _, object in pairs(notification) do
       if typeof(object) == "Instance" then
           task.spawn(function()
               local tween = utility.tween(object, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
               tween.Completed:Connect(function()
                   if object.Name == "Holder" then object:Destroy() end
               end)
               if object:IsA("TextLabel") then
                   utility.tween(object, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {TextTransparency = 1})
               end
           end)
       end
   end
end

utility.notify = function(text, duration, color)
   duration = duration or 2
   color = color or Color3.fromRGB(173, 216, 230)
   text = text or "No text provided? "..tostring(math.random())

   local notification = {}

   notification.holder = Instance.new("Frame")
   notification.holder.Position = UDim2.new(0, -30, 0, 75)
   notification.holder.Size = UDim2.new(0, 0, 0, 23)
   notification.holder.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
   notification.holder.BorderSizePixel = 1
   notification.holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
   notification.holder.Parent = notificationcontainer

   notification.background = Instance.new("Frame")
   notification.background.Size = UDim2.new(1, -4, 1, -4)
   notification.background.Position = UDim2.new(0, 2, 0, 2)
   notification.background.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
   notification.background.BorderSizePixel = 1
   notification.background.BorderColor3 = Color3.fromRGB(0, 0, 0)
   notification.background.Parent = notification.holder

   notification.accent_bar = Instance.new("Frame")
   notification.accent_bar.Size = UDim2.new(0, 1, 1, 0)
   notification.accent_bar.BackgroundColor3 = color
   notification.accent_bar.Parent = notification.background

   notification.accent_bar2 = Instance.new("Frame")
   notification.accent_bar2.Size = UDim2.new(0, 0, 0, 1)
   notification.accent_bar2.Position = UDim2.new(0, 0, 0, 15)
   notification.accent_bar2.BackgroundColor3 = color
   notification.accent_bar2.Parent = notification.background

   notification.text = Instance.new("TextLabel")
   notification.text.TextXAlignment = Enum.TextXAlignment.Left
   notification.text.Position = UDim2.new(0, 3, 0, 0)
   notification.text.Size = UDim2.new(1, 0, 1, 0)
   notification.text.Font = Enum.Font.Ubuntu
   notification.text.TextColor3 = Color3.new(1, 1, 1)
   notification.text.BackgroundTransparency = 1
   notification.text.TextSize = 12
   notification.text.Text = text
   notification.text.Parent = notification.background

   notification.holder.Size = UDim2.new(0, notification.text.TextBounds.X + 10, 0, 19)
   notification.accent_bar2.Size = UDim2.new(0, 1, 0, 1)

   notifications[notification] = true

   task.spawn(function()
       notification.holder.Size = UDim2.new(0, notification.text.TextBounds.X + 10, 0, 19)
       utility.update_notifications()
       notification.accent_bar2:TweenSize(UDim2.new(0, notification.background.AbsoluteSize.X - 1, 0, 1), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, duration, false)
       task.wait(duration)
       utility.cleanup_notification(notification)
       task.wait(1.2)
       notifications[notification] = nil
       utility.update_notifications()
   end)

   return notification
end

return utility
