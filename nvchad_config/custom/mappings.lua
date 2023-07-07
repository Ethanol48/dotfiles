---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-s>"] = ""
  }
}

M.nvimtree = {
  n = {
  -- toggle
  ["<leader>pv"] = {"<cmd> NvimTreeToggle <CR>", "  toggle nvimtree"},
  }
}

M.general = {
  i = {
    ["jk"] = {"<ESC>", "escape vim"}
  },
  n = {
    ["<leader>u"] = {"<cmd> UndotreeToggle <CR>"},
    ["<leader>ww"] = {"<cmd> autocmd TextChanged,TextChangedI <buffer> silent write <CR>"}
  }
}


return M
