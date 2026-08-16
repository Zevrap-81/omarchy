-- HyprDynamicMonitors profile: docked
-- Lid open, laptop panel + both Acer displays.
--
-- This file is Lua, not hyprlang. Hyprland 0.55+ dropped `monitor=` syntax and
-- Omarchy 4.0 loads ~/.config/hypr/monitors.lua, which dofiles the symlink
-- hyprdynamicmonitors maintains at ~/.config/hypr/monitors-dynamic.lua.
-- Field reference: https://wiki.hypr.land/Configuring/Basics/Monitors/
--
-- NOTE: `hyprdynamicmonitors freeze` and `hyprdynamicmonitors tui` still emit
-- the legacy `monitor=` syntax. Translate their output by hand before pasting.

-- Laptop panel, portrait-ish placement below the Acers.
hl.monitor({
  output = "desc:Chimei Innolux Corporation 0x140A",
  mode = "preferred",
  position = "265x1920",
  scale = 1,
  transform = 0,
  vrr = 0,
})

-- Acer QG240Y, rotated 90 degrees, top-left of the layout.
hl.monitor({
  output = "desc:Acer Technologies QG240Y H3 1321022A93V01",
  mode = "1920x1080@60",
  position = "0x0",
  scale = 1,
  transform = 1,
  vrr = 0,
  reserved_area = { top = 280, bottom = 0, left = 0, right = 0 },
})

-- Acer QG271, landscape, to the right of the rotated QG240Y.
hl.monitor({
  output = "desc:Acer Technologies QG271 TGJEE00885S8",
  mode = "1920x1080@60",
  position = "1080x416",
  scale = 1,
  transform = 0,
  vrr = 0,
})
