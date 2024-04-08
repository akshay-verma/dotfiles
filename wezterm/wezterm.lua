local wezterm = require("wezterm")
local config = {}
local mux = wezterm.mux
local act = wezterm.action

config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Monokai Soda"
config.font_size = 12
config.default_cursor_style = "BlinkingBar"

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
-- config.window_decorations = "RESIZE"
config.use_dead_keys = false
config.scrollback_lines = 5000

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.window_frame = {
	font = wezterm.font({ family = "Noto Sans", weight = "Regular" }),
}
config.inactive_pane_hsb = {
	brightness = 0.3,
}

config.disable_default_key_bindings = true

-- Leader is the same as my old tmux prefix
config.leader = { key = "a", mods = "CMD", timeout_milliseconds = 1000 }
config.keys = {
	-- split vertical
	{
		mods = "LEADER",
		key = "-",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- split horizontral
	{
		mods = "LEADER",
		key = "=",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- maximize current pane
	{
		mods = "LEADER",
		key = "m",
		action = act.TogglePaneZoomState,
	},
	-- paste from the clipboard
	{ key = "v", mods = "CMD", action = act.PasteFrom("Clipboard") },

	-- paste from the primary selection
	{ key = "v", mods = "CMD", action = act.PasteFrom("PrimarySelection") },

	-- copy from clipboard and primary selection
	{
		key = "c",
		mods = "CMD",
		action = act.CopyTo("ClipboardAndPrimarySelection"),
	},
	-- pane navigation
	{
		key = "LeftArrow",
		mods = "CMD|ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "CMD|ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "CMD|ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "CMD|ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	-- Text navigation
	{ mods = "ALT", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "ALT", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
	-- Create Tab
	{ key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") },
	-- Close Tab
	{ key = "w", mods = "CMD", action = act.CloseCurrentTab({ confirm = false }) },
	-- Close Pane
	{ key = "x", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) },
	-- open wezterm config in neovim
	{
		key = ",",
		mods = "CMD",
		action = act.SpawnCommandInNewTab({
			cwd = os.getenv("WEZTERM_CONFIG_DIR"),
			set_environment_variables = {
				TERM = "screen-256color",
			},
			args = {
				"/opt/homebrew/bin/nvim",
				os.getenv("WEZTERM_CONFIG_FILE"),
			},
		}),
	},
	-- Switch workspace
	{
		key = "c",
		mods = "LEADER",
		action = act.SwitchToWorkspace({
			name = "coding",
		}),
	},
}

for i = 1, 8 do
	-- CMD + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CMD",
		action = act.ActivateTab(i - 1),
	})
end

return config
