local wezterm = require 'wezterm'

return {
  color_scheme = "Solarized Dark Higher Contrast",
  color_scheme = "Spacedust",
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  font = wezterm.font('Fira Code', {weight = 'DemiBold'}),
  font_size = 9.0,
  line_height=1.2,
  default_cursor_style = 'BlinkingUnderline',
  cursor_blink_rate = 500,
  cursor_thickness = 1.8
}
