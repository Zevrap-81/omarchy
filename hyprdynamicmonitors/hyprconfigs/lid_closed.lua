-- HyprDynamicMonitors profile: lid_closed
-- Lid shut, both Acer displays only.
--
-- This file is Lua, not hyprlang. See docked.lua for the full explanation.
-- Field reference: https://wiki.hypr.land/Configuring/Basics/Monitors/

-- The laptop panel is deliberately NOT listed with `disabled = true`.
-- Hyprland disables it on lid close by itself, and a hardcoded disable here is
-- a footgun: `hyprdynamicmonitors prepare` strips legacy `monitor=...,disable`
-- lines at boot precisely to stop Hyprland starting with zero outputs, but its
-- regex cannot match Lua's `disabled = true`. Since the destination is a
-- symlink to whichever profile was last active, booting lid-open with no
-- externals would then leave Hyprland with no display at all.

-- Acer QG240Y, rotated 90 degrees, top-left of the layout.
hl.monitor({
  output = "desc:Acer Technologies QG240Y H3 1321022A93V01",
  mode = "1920x1080@60",
  position = "0x0",
  scale = 1,
  transform = 1,
  vrr = 0,
  reserved_area = { top = 280, bottom = 80, left = 0, right = 0 },
})

-- Acer QG271, landscape, to the right of the rotated QG240Y.
hl.monitor({
  output = "desc:Acer Technologies QG271 TGJEE00885S8",
  mode = "1920x1080@60",
  position = "1080x0",
  scale = 1,
  transform = 0,
  vrr = 0,
})
