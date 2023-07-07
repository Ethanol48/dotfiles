-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
}






-- local function genModes_hl_no_bold(col)
  -- colors = require("base46").get_theme_tb "base_30"
-- 
--   return { fg = colors.black, bg = colors[col], bold = false }
-- end
-- 
-- -- add mode highlights
-- 
-- 
-- 
-- -- -@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
