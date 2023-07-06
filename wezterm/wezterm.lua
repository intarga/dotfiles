-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = '3024 (light) (terminal.sexy)'
config.color_scheme = 'alnj'

config.default_prog = { '/bin/bash' }

config.font = wezterm.font 'Iosevka Extended'

config.font_size = 16.0

config.bold_brightens_ansi_colors = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.use_fancy_tab_bar = false

config.window_decorations = "RESIZE"

config.colors = {
  tab_bar = {
    background = '#F3EAE9',

    active_tab = {
      bg_color = '#C97270',
      fg_color = '#FFFCFD',
      intensity = 'Bold',
    },

    inactive_tab = {
      bg_color = '#D68482',
      fg_color = '#FFFCFD',
    },

    inactive_tab_hover = {
      bg_color = '#D68482',
      fg_color = '#FFFCFD',
    },

    new_tab = {
      bg_color = '#F3EAE9',
      fg_color = '#F3EAE9',
    },

    new_tab_hover = {
      bg_color = '#F3EAE9',
      fg_color = '#F3EAE9',
    },
  },
}    
  
-- and finally, return the configuration to wezterm
return config
