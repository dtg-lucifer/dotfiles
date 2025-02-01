-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "material-darker",
	-- theme = "monekai",
	-- theme = "chadracula",
  -- theme_toggle = "chadracula" | "material-darker",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  transparency = true
}

-- M.ui = {
--   transparency = true
-- }

return M
