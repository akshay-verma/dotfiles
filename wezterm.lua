local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Monokai Soda"
config.font_size = 12
config.default_cursor_style = "BlinkingBar"

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
return config
