-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- Font settings
config.font_size = 10

-- Background image configuration
config.window_background_image = "/home/santi/Downloads/night-rain.jpg"

-- Bajamos un poco más el brightness para dar contraste al texto claro
config.window_background_image_hsb = {
	brightness = 0.02, -- Bajado a ~0.18 (probá entre 0.15 y 0.22 según te guste)
	hue = 1.0,
	saturation = 0.5,
}

-- OPCIONAL: Si querés un tinte oscuro parejo además del brillo bajo,
-- podés reemplazar `window_background_image` por la lista `background`:
--[[
config.background = {
  {
    source = { File = '/home/santi/Downloads/lofi.jpeg' },
    hsb = {
      brightness = 0.2,
      hue = 1.0,
      saturation = 0.7,
    },
  },
  {
    source = { Color = 'rgba(18, 24, 23, 0.55)' }, -- Un tono verdoso/oscuro acorde a Everforest
  },
}
--]]

-- Finally, return the configuration to wezterm:
return config
