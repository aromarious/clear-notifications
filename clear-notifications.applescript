on openControlCenter()
	tell application "System Events" to tell process "ControlCenter" to click menu bar item 1 of menu bar 1
end openControlCenter

openControlCenter()

delay 0.5
tell application "System Events" to tell application process "NotificationCenter"
	try
		set targetGroup to group 1 of window "Notification Center" of application process "NotificationCenter" of application "System Events"
		perform action 1 of menu button 1 of scroll area 1 of group 1 of targetGroup
		perform action 3 of menu item 1 of menu 1 of targetGroup
	on error errMsg number errNum
		tell me to openControlCenter()
		return
	end try
end tell
delay 0.5

openControlCenter()
""
