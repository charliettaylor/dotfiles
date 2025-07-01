local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- utils
local is_linux = function()
	return wezterm.target_triple:find("linux") ~= nil
end

local is_mac = function()
	return wezterm.target_triple:find("darwin") ~= nil
end

local is_windows = function()
	return wezterm.target_triple:find("windows") ~= nil
end

-- appearance
config.window_background_opacity = 0.9

config.color_scheme = "Catppuccin Mocha"

if is_mac() then
	-- Use the native "fancy" tab bar on macOS for a more integrated look.
	config.use_fancy_tab_bar = true

	-- Hide the title bar and use native window buttons on macOS.
	config.window_decorations = "RESIZE"
end

-- shells
if is_windows() then
	config.launch_menu = {
		{
			label = "PowerShell",
			args = { "powershell.exe" },
		},
		{
			label = "Git Bash",
			args = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" },
		},
		{
			label = "Command Prompt",
			args = { "cmd.exe" },
		},
	}
else
	config.launch_menu = {
		{ label = "Bash", args = { "bash", "-l" } },
		{ label = "Zsh", args = { "zsh", "-l" } },
		{
			label = "Bash Home",
			args = { "bash", "-l" },
			cwd = wezterm.home_dir,
		},
		{
			label = "Zsh Home",
			args = { "zsh", "-l" },
			cwd = wezterm.home_dir,
		},
	}
end

config.default_prog = { "powershell.exe" }

-- keymaps
config.keys = {
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ShowLauncher,
	},
}

-- plugins
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)

return config
