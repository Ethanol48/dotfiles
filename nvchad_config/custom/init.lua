-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


-- require("nvim-web-devicons").set_icon {
--   default_icon = {
--     icon = "",
--     -- color = "#428850",
--     -- cterm_color = "65",
--     -- name = "Zsh"
--   },
--  }
-- 
-- require("nvim-web-devicons").set_icon {
--   sol = {
--     icon = "",
--   }
--  }




-- local M = {}
-- local statusline_theme = config.statusline.theme
-- M.default = merge_tb("force", M.default, Lsp_highlights)
-- 
-- 
-- local colors = require("base46").get_theme_tb "base_30"
-- 
-- local function genModes_hl_no_bold(modename, col)
--   M.default["St_" .. modename .. "ModeNoBold"] = { fg = colors.black, bg = colors[col], bold = true }
--   M.default["St_" .. modename .. "ModeSepNoBold"] = { fg = colors[col], bg = colors.grey }
-- 
--   M.vscode_colored["St_" .. modename .. "ModeNoBold"] = { fg = colors[col], bg = colors.one_bg3, bold = true }
-- 
--   M.minimal["St_" .. modename .. "ModeNoBold"] = { fg = colors.black, bg = colors[col], bold = true }
--   M.minimal["St_" .. modename .. "ModeSepNoBold"] = { fg = colors[col], bg = colors.black, bold = true }
--   M.minimal["St_" .. modename .. "modeTextNoBold"] = { fg = colors[col], bg = colors.one_bg, bold = true }
-- end
-- 
-- -- add mode highlights
-- if statusline_theme == "default" then
--   genModes_hl_no_bold("Normal", "nord_blue")
-- else
--   genModes_hl_no_bold("Normal", "blue")
-- end
-- 
-- genModes_hl_no_bold("Visual", "cyan")
-- genModes_hl_no_bold("Insert", "dark_purple")
-- genModes_hl_no_bold("Terminal", "green")
-- genModes_hl_no_bold("NTerminal", "yellow")
-- genModes_hl_no_bold("Replace", "orange")
-- genModes_hl_no_bold("Confirm", "teal")
-- genModes_hl_no_bold("Command", "green")
-- genModes_hl_no_bold("Select", "blue")
