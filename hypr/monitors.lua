-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Fallback rule for any output without an explicit rule below. Kept first so
-- the profile's specific rules take precedence.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- hyprdynamicmonitors picks a profile from ~/.config/hyprdynamicmonitors/
-- based on which displays are connected and the lid state, then symlinks it
-- here and asks Hyprland to reload. Profiles are plain Lua and call
-- hl.monitor() directly -- Hyprland 0.55+ has no `source` for legacy .conf.
--
-- Service: systemctl --user status hyprdynamicmonitors
-- Profiles: ~/.config/hyprdynamicmonitors/hyprconfigs/*.lua
local dynamic = (os.getenv("HOME") or "") .. "/.config/hypr/monitors-dynamic.lua"

local handle = io.open(dynamic, "r")

if handle then
  handle:close()
  local ok, err = pcall(dofile, dynamic)
  if not ok then
    hl.exec_cmd("notify-send -u critical 'monitors-dynamic.lua failed' " .. o.shell_quote(tostring(err)))
  end
end

-- Personal overrides go below; they are applied after the dynamic profile.
