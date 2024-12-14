-- functions to open apps per keybinding
function openFirefox()
	hs.application.launchOrFocus("Firefox")
end

function openTerminal()
	hs.application.launchOrFocus("iTerm")
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

function openMusic()
	hs.application.launchOrFocus("Music")
end

hs.hotkey.bind({ "alt" }, "1", openFirefox)
hs.hotkey.bind({ "alt" }, "2", openTerminal)
hs.hotkey.bind({ "alt" }, "3", openEmacs)
hs.hotkey.bind({ "alt" }, "4", openMail)
hs.hotkey.bind({ "alt" }, "5", openTeams)
hs.hotkey.bind({ "alt" }, "6", openMessages)
hs.hotkey.bind({"alt"}, "7", openSignal)
hs.hotkey.bind({"alt"}, "9", openMusic)



-- Automatically reload Hammerspoon config on changes
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()
hs.alert.show("Hammerspoon config loaded")
