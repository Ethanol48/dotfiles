vim.opt.scrolloff = 8

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
-- local highlights = "custom.highlights"

M.ui = require "custom.configs.overrides".ui

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
