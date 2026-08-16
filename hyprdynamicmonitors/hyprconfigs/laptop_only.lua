-- HyprDynamicMonitors profile: laptop_only
-- Lid open, no external displays.
--
-- This file is Lua, not hyprlang. See docked.lua for the full explanation.
-- Field reference: https://wiki.hypr.land/Configuring/Basics/Monitors/
--
-- Replaces the old laptop_only.go.tmpl, which was stale nwg-displays output
-- from January: it referenced DVI-I-1 / DVI-I-2 (no longer present) and carried
-- `bindl=` lid-switch handlers. Those handlers are dropped -- Hyprland disables
-- the panel on lid close by itself, and hyprdynamicmonitors now switches
-- profiles on the same event.

hl.monitor({
  output = "desc:Chimei Innolux Corporation 0x140A",
  mode = "preferred",
  position = "0x0",
  scale = 1,
  transform = 0,
})
