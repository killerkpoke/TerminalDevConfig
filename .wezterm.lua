local wezterm = require 'wezterm'

local config = wezterm.config_builder()


--config.font = wezterm.font 'Monocraft'
config.font = wezterm.font 'Miracode'

config.font_size = 18

config.color_scheme = 'Gruvbox Dark (Gogh)'

config.window_background_opacity = 0.9
return config
