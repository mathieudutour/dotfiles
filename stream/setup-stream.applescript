------------------------------------
-- CHROME WINDOWS SETUP --
------------------------------------

set chromeWindows to [Â
	{location:"https://streamlabs.com/alert-box/v3/68B6827AAFD4590EA504", bounds:{1104, 0, 1440, 524}},Â
	{location:"https://streamlabs.com/widgets/event-list/v1/68B6827AAFD4590EA504", bounds:{1104, 525, 1440, 900}},Â
	{location:"https://www.twitch.tv/popout/mathieudutour/chat?popout=", bounds:{0, 852, 1104, 900}}Â
]

-- open all needed stream windows in chrome
tell application "Google Chrome"
	-- first hide the current window because it's my own personal tabs
	set minimized of window 1 to true

	-- loop through all windows and pop them up
	repeat with win in chromeWindows
		make new window
		open location location of win
		set bounds of front window to bounds of win
	end repeat
end tell

----------------------
-- ITERM2 SETUP --
----------------------

-- tell iterm2 to create a new window
tell application "iTerm2"
	create window with default profile
  set bounds of front window to {0, 0, 1103, 851}
end tell

----------------------
-- VSCODE SETUP --
----------------------

-- tell vs code to create a new window
-- tell application "iTerm2"
-- 	create window with default profile
--   set bounds of front window to {0, 0, 1103, 851}
-- end tell

--------------------------------
-- SOUND OUTPUT SETUP --
--------------------------------

-- switch sound output to custom multi-output device 'OBS Output'
tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
	activate
end tell

tell application "System Events"
	tell application process "System Preferences"
		tell tab group 1 of window "Sound"
			select (row 1 of table 1 of scroll area 1 where value of text field 1 is "OBS Output")
		end tell
	end tell
end tell
quit application "System Preferences"

-- open itunes and play the 'Twitch' playlist
tell application "Music"
	activate
	play user playlist "Twitch"
	try
		make new miniplayer window
	on error errStr number errorNumber
		log errStr
	end try
	set position of window 1 to {1152, 1}
end tell
