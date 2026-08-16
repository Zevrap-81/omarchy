-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.
--
-- See current bindings and descriptions:
--   omarchy menu keybindings --print
--
-- Omarchy 4.0's defaults are deliberately left alone. The pre-4.0
-- bindings.conf overrode four keys that 4.0 has since claimed for its own
-- defaults; those overrides are NOT carried over:
--
--   SUPER + SHIFT + O      -> Obsidian        (was: Document Viewer / evince)
--   SUPER + SHIFT + W      -> Omawrite        (was: Typora)
--   SUPER + SHIFT + SLASH  -> 1Password       (was: Bitwarden)
--   SUPER + SHIFT + P      -> Google Photos   (was: Screenshot region)
--
-- evince, typora and bitwarden-desktop are still installed and launchable from
-- the apps menu (SUPER + ALT + SPACE). Stock screenshot keys are PRINT and
-- SUPER + CTRL + C (capture menu).

-- Lock screen. Omarchy's stock lock binding is SUPER + CTRL + L, which stays
-- as-is; this adds SUPER + SHIFT + L alongside it. The key is not bound by any
-- 4.0 default, so nothing is overridden.
o.bind("SUPER + SHIFT + L", "Lock screen", "omarchy-system-lock")

-- Side mouse buttons switch workspaces. Additive -- Omarchy binds mouse:272
-- and mouse:273 (with SUPER) but leaves 275/276 free.
o.bind("mouse:275", "Workspace left", hl.dsp.focus({ workspace = "e-1" }))
o.bind("mouse:276", "Workspace right", hl.dsp.focus({ workspace = "e+1" }))
