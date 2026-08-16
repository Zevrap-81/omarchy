-- Change the default Omarchy look'n'feel.
-- Ported from the pre-4.0 looknfeel.conf.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
  general = {
    -- Minimal gaps with a thin, visible border.
    gaps_in = 1,
    gaps_out = 1,
    border_size = 1,

    -- niri-like side-scrolling layout instead of dwindle.
    layout = "scrolling",
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 10,
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
hl.config({
  layout = {
    -- Let a single window use the full desktop width ({0, 0} disables the
    -- aspect cap). SUPER + CTRL + BACKSPACE toggles this at runtime, and the
    -- toggle is applied after this file, so it wins while active.
    single_window_aspect_ratio = { 0, 0 },
  },
})

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
  scrolling = {
    -- A shared window occupies most of the screen (wider single column).
    column_width = 0.6,
  },
})
