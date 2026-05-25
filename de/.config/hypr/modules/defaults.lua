local browser = "librewolf"
local terminal = "ghostty"
local filemanager = "ghostty -e yazi"

hl.env("BROWSER", browser)
hl.env("TERMINAL", terminal)
hl.env("FILEMANAGER", filemanager)

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(filemanager))
hl.bind("SUPER + CTRL + RETURN", hl.dsp.exec_cmd("fuzzel"))

hl.on("hyprland.start", function ()
    hl.exec_cmd("mako")
    hl.exec_cmd("udiskie")
end)
