local wezterm = require 'wezterm'
local act = wezterm.action

config = {
  color_scheme = "Solarized Dark Higher Contrast",
  color_scheme = "Railscasts (base16)",
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  enable_scroll_bar = true,
  font = wezterm.font('Fira Code', {weight = 'DemiBold'}),
  font_size = 9.0,
  font_dirs = { '/usr/share/fonts/TTF' },
  line_height=1.2,
  default_cursor_style = 'BlinkingUnderline',
  cursor_blink_rate = 500,
  cursor_thickness = 1.8,
  window_close_confirmation = 'NeverPrompt',
}

config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "NONE",
    action = wezterm.action.Nop,
  },
}

wezterm.font("Font Awesome 6 Brands", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/TTF/fa-brands-400.ttf, FontConfig
wezterm.font("Font Awesome 6 Free", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/TTF/fa-regular-400.ttf, FontConfig
wezterm.font("Font Awesome 6 Free", {weight="Black", stretch="Normal", style="Normal"}) -- /usr/share/fonts/TTF/fa-solid-900.ttf, FontConfig
wezterm.font("Font Awesome v4 Compatibility", {weight="Regular", stretch="Normal", style="Normal"}) -- /usr/share/fonts/TTF/fa-v4compatibility.ttf, FontConfig
wezterm.font("JetBrains Mono", {weight="Thin", stretch="Normal", style="Normal"}) -- /usr/share/fonts/TTF/JetBrainsMono-Thin.ttf, FontConfig

return config;