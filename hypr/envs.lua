-- Personal environment variables, applied after Omarchy's defaults.
-- Ported from the pre-4.0 envs.conf.

-- Larger cursor for easier visibility at native (1.0) scale.
-- Omarchy's default (default/hypr/envs.lua) is 24.
hl.env("XCURSOR_SIZE", "36")
hl.env("HYPRCURSOR_SIZE", "36")

-- The old envs.conf also forced NVD_BACKEND / LIBVA_DRIVER_NAME /
-- __GLX_VENDOR_LIBRARY_NAME to nvidia. This machine has Intel Iris Xe graphics
-- and no NVIDIA GPU, so those were inert and are not carried over. Omarchy
-- sets them automatically when it detects NVIDIA hardware --
-- see /usr/share/omarchy/default/hypr/nvidia.lua.
