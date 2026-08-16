-- Bind workspaces to specific monitors.
-- Ported from the pre-4.0 workspaces.conf.
-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
--
-- Monitors are matched by description rather than port name so the rules hold
-- however the displays enumerate (the QG240Y has been both DVI-I-1 and DP-5).
-- Workspaces 5 and 10 are deliberately left unbound, as in the old config.

local qg240y = "desc:Acer Technologies QG240Y H3 1321022A93V01"
local qg271 = "desc:Acer Technologies QG271 TGJEE00885S8"

-- The scrolling layout runs left-to-right globally (see looknfeel.lua). On the
-- rotated QG240Y that tape runs across the short edge, so it scrolls top-to-
-- bottom there instead -- new windows appear below and the layout scrolls down.
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
local scroll_down = { direction = "down" }

-- First monitor -- Acer QG240Y (24", rotated portrait)
hl.workspace_rule({ workspace = "1", monitor = qg240y, default = true, layout_opts = scroll_down })
hl.workspace_rule({ workspace = "2", monitor = qg240y, layout_opts = scroll_down })
hl.workspace_rule({ workspace = "3", monitor = qg240y, layout_opts = scroll_down })
hl.workspace_rule({ workspace = "4", monitor = qg240y, layout_opts = scroll_down })

-- Second monitor -- Acer QG271 (27")
hl.workspace_rule({ workspace = "6", monitor = qg271, default = true })
hl.workspace_rule({ workspace = "7", monitor = qg271 })
hl.workspace_rule({ workspace = "8", monitor = qg271 })
hl.workspace_rule({ workspace = "9", monitor = qg271 })
