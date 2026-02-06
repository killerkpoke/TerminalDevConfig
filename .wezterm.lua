local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font 'Miracode'

config.font_size = 18

--config.color_scheme = 'Ibm 3270 (High Contrast) (Gogh)'
local theme = require 'colors.0x96f'
config.colors = theme

config.window_background_opacity = 0.7
return config
