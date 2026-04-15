local wezterm = require 'wezterm'

return {
  -- scheme
  color_scheme = "Catppuccin Frappe", -- Mocha or Macchiato, Frappe, Latte,

  -- font
  font = wezterm.font_with_fallback({
    { family = "Cica" },
    -- { family = "Cica", assume_emoji_presentation = true },
    { family = "Twemoji Mozilla", assume_emoji_presentation = true },
  }),
  font_size = 18,
  use_fancy_tab_bar = false,
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "RESIZE",
  window_background_opacity = 0.9,

  keys = {
    {
      key = "Enter",
      mods = "SUPER",
      action = wezterm.action.ToggleFullScreen,
    }
  }
}
