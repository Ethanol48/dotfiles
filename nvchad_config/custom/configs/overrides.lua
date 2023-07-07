local M = {}


M.telescope = {
  defaults = {
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.55,
        results_width = 0.8,
      },
    },
  }
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "markdown",
    "c",
    "bash",
    "lua",
    "typescript",
    "rust",
    "go",
    "python",
  },
}

-- M.web_devicons = {
--
--   override = {
--     solidity = {
--       icon = ""
--     },
--   },
--
--   override_by_filename = {
--     [".sol"] = {
--       icon = "",
--     },
--   }
--
-- }

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",        -- sumneko_lua  
    "stylua",                     -- stylua

    -- python
    "python-lsp-server",          -- pylsp

    -- web dev
    "css-lsp",                    -- cssls 
    "cssmodules-language-server", -- cssmodules_ls
    "html-lsp",                   -- html

    -- go
    "gopls",                      -- gopls
    "go-debug-adapter",
    "goimports",


    -- shell
    "shfmt",
    "shellcheck",
    "bash-language-server",       -- bashls
    "bash-debug-dapter"
  },
}


-- git support in nvimtree
M.nvimtree = {

  filters = {
    dotfiles = true,
    git_clean = false,
  },

  git = {
    enable = false,
    ignore = false,
  },

  view = {
    hide_root_folder = false,
    adaptive_size = true,
  },

  renderer = {
    root_folder_label = ":~:s?$?/..?",

    indent_markers = {
      enable = true,
    },

    highlight_git = false,

    icons = {

      show = {
        git = true,

      },

      glyphs = {

        default = "",
        -- solidity = "",

        folder = {
          empty = "",
          empty_open = "",
          default = "",
          open = "",
        }
      },
    },
  }
}

M.ui = {

  icons = {
    devicons = {

      default_icon = {
        icon = ""
      },

      solidity = {
        icon = "",
      },
    },

    solidity = {
      icon = "",
    },
  },

  transparency = false,

  Comment = {
    italic = true,
  },

  hl_add = {
    St_NormalModeNoBold = { fg = "black", bg = "nord_blue", bold = false },
    St_VisualModeNoBold = { fg = "black", bg = "cyan", bold = false },
    St_InsertModeNoBold = { fg = "black", bg = "dark_purple", bold = false },
    St_TerminalModeNoBold = { fg = "black", bg = "green", bold = false },
    St_NTerminalModeNoBold = { fg = "black", bg = "yellow", bold = false },
    St_ReplaceModeNoBold = { fg = "black", bg = "orange", bold = false },
    St_ConfirmModeNoBold = { fg = "black", bg = "teal", bold = false },
    St_CommandModeNoBold = { fg = "black", bg = "green", bold = false },
    St_SelectModeNoBold = { fg = "black", bg = "blue", bold = false },
  },


  theme = "onedark",
  theme_toggle = { "onedark", "doomchad"},


  hl_override = {
    DevIconhtml = { fg = "#ff7a00" },
    DevIconcss = { fg = "#3b93f7" },
    DevIconpy = {
      fg = "#f7c745",
    },
    DevIconFolder= { fg = "#d7e5f4" },
    TbLineCloseAllBufsBtn = { bold = false },
    TbLineThemeToggleBtn = { bold = false },    -- 
    St_gitIcons = { bold = false },

  },

  statusline = {
    overriden_modules = function()
      local st_modules = require "nvchad_ui.statusline.default"
      -- this is just default table of statusline modules

      return {
        mode = function()
          local modes = {
            ["n"] = { "NORMAL", "St_NormalMode" },
            ["niI"] = { "NORMAL i", "St_NormalMode" },
            ["niR"] = { "NORMAL r", "St_NormalMode" },
            ["niV"] = { "NORMAL v", "St_NormalMode" },
            ["no"] = { "N-PENDING", "St_NormalMode" },
            ["i"] = { "INSERT", "St_InsertMode" },
            ["ic"] = { "INSERT (completion)", "St_InsertMode" },
            ["ix"] = { "INSERT completion", "St_InsertMode" },
            ["t"] = { "TERMINAL", "St_TerminalMode" },
            ["nt"] = { "NTERMINAL", "St_NTerminalMode" },
            ["v"] = { "VISUAL", "St_VisualMode" },
            ["V"] = { "V-LINE", "St_VisualMode" },
            ["Vs"] = { "V-LINE (Ctrl O)", "St_VisualMode" },
            [""] = { "V-BLOCK", "St_VisualMode" },
            ["R"] = { "REPLACE", "St_ReplaceMode" },
            ["Rv"] = { "V-REPLACE", "St_ReplaceMode" },
            ["s"] = { "SELECT", "St_SelectMode" },
            ["S"] = { "S-LINE", "St_SelectMode" },
            [""] = { "S-BLOCK", "St_SelectMode" },
            ["c"] = { "COMMAND", "St_CommandMode" },
            ["cv"] = { "COMMAND", "St_CommandMode" },
            ["ce"] = { "COMMAND", "St_CommandMode" },
            ["r"] = { "PROMPT", "St_ConfirmMode" },
            ["rm"] = { "MORE", "St_ConfirmMode" },
            ["r?"] = { "CONFIRM", "St_ConfirmMode" },
            ["!"] = { "SHELL", "St_TerminalMode" },
          }
          local m = vim.api.nvim_get_mode().mode

          return  "%#" .. modes[m][2] .. "NoBold" .. "#" .. "  " .. st_modules.mode()
          -- or just return "" to hide this module
        end,
      }
    end,

  },
}




return M
