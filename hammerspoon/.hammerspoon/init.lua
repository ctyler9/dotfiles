-- functions to open apps per keybinding
function openFirefox()
	hs.application.launchOrFocus("Firefox")
end

function openTerminal()
	hs.application.launchOrFocus("Alacritty")
end

function openEmacs()
	hs.application.launchOrFocus("Emacs")
end

function openMail()
	hs.application.launchOrFocus("Mail")
end

function openTeams()
	hs.application.launchOrFocus("Microsoft Teams (work or school)")
end

function openMessages()
	hs.application.launchOrFocus("Messages")
end

function openSignal()
	hs.application.launchOrFocus("Signal")
end

function openSpotify()
	hs.application.launchOrFocus("Spotify")
end

hs.hotkey.bind({ "ctrl" }, "1", openFirefox)
hs.hotkey.bind({ "ctrl" }, "2", openTerminal)
hs.hotkey.bind({ "ctrl" }, "3", openEmacs)
hs.hotkey.bind({ "ctrl" }, "4", openMail)
hs.hotkey.bind({ "ctrl" }, "5", openTeams)
hs.hotkey.bind({ "ctrl" }, "6", openMessages)
hs.hotkey.bind({"ctrl"}, "7", openSignal)
hs.hotkey.bind({"ctrl"}, "9", openSpotify)



-- Automatically reload Hammerspoon config on changes
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()
hs.alert.show("Hammerspoon config loaded")
