local wezterm = require 'wezterm'
local config = {}

-- Font and theme
config.adjust_window_size_when_changing_font_size = false
config.allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace"
config.anti_alias_custom_block_glyphs = true

config.font = wezterm.font_with_fallback {
  {
    family = 'FiraCode Nerd Font',
    weight = 'Medium',
    harfbuzz_features = {
      -- "cv01", ---styles: a
      -- "cv02", ---styles: g
      "cv06", ---styles: i (03..06)
      -- "cv09", ---styles: l (07..10)
      "cv12", ---styles: 0 (11..13, zero)
      "cv14", ---styles: 3
      "cv16", ---styles: * (15..16)
      -- "cv17", ---styles: ~
      -- "cv18", ---styles: %
      -- "cv19", ---styles: <= (19..20)
      -- "cv21", ---styles: =< (21..22)
      -- "cv23", ---styles: >=
      -- "cv24", ---styles: /=
      "cv25", ---styles: .-
      "cv26", ---styles: :-
      -- "cv27", ---styles: []
      "cv28", ---styles: {. .}
      "cv29", ---styles: { }
      -- "cv30", ---styles: |
      "cv31", ---styles: ()
      "cv32", ---styles: .=
      -- "ss01", ---styles: r
      -- "ss02", ---styles: <= >=
      "ss03", ---styles: &
      "ss04", ---styles: $
      "ss05", ---styles: @
      -- "ss06", ---styles: \\
      "ss07", ---styles: =~ !~
      -- "ss08", ---styles: == === != !==
      "ss09", ---styles: >>= <<= ||= |=
      -- "ss10", ---styles: Fl Tl fi fj fl ft
      -- "onum", ---styles: 1234567890
    }
  },
  { family = 'Cascadia Code NF', weight = 'Medium'},
  { family = "Noto Color Emoji" },
  { family = "LegacyComputing" },
}

config.underline_position = -2.5
config.underline_thickness = "2px"
config.warn_about_missing_glyphs = false

local monaspace_features =
  { "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" }
config.font_rules = {
  {
    intensity = "Normal",
    italic = true,
    font = wezterm.font_with_fallback {
      {
        family = "Monaspace Radon Var",
        style = "Normal",
        weight = "Regular",
        stretch = "Normal",
        harfbuzz_features = monaspace_features,
      },
      { family = "Symbols Nerd Font" },
    },
  },
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font_with_fallback {
      {
        family = "Monaspace Krypton Var",
        style = "Italic",
        weight = "Black",
        harfbuzz_features = monaspace_features,
        scale = 1.1,
      },
      { family = "Symbols Nerd Font" },
    },
  },
}

config.color_scheme = 'Catppuccin Mocha'

-- Set initial size
config.initial_rows = 50
config.initial_cols = 200

-- Set background
config.window_background_opacity = 0.5
config.win32_system_backdrop = 'Acrylic'

config.default_prog = {'pwsh'}

return config
