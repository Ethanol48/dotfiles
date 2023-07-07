local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  -- LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },


  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },


  -- NvimTree
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    -- config = function()
    --   require("nvim-tree").setup(overrides.nvimtree)
    -- end,
    --
    lazy = false

  },


  {
    "nvim-tree/nvim-web-devicons",

    -- opts = {
    --   devicons = {
    --       default_icon = {
    --         icon = ""
    --       },
    --
    --       solidity = {
    --         icon = "",
    --       },
    --
    --   }
    -- },
    config = function()
      require("nvim-web-devicons").set_icon {
        default = {
          icon = "",
          -- color = "#428850",
          -- cterm_color = "65",
          -- name = "Zsh"
        },
      }

      require("nvim-web-devicons").set_icon {
        sol = {
          icon = "",
          color = "#519aba",
          cterm_color = "74",
          name = "Solidity",
        }
      }
    end

    -- config = function()
    --   require("nvim-web-devicons").set_icon {
    --     default_icon = {
    --       icon = ""
    --     },
    --   }
    --   require("nvim-web-devicons").set_icon {
    --
    --     solidity = {
    --       icon = "",
    --     },
    --   }
    -- end
  },

  -- opts= {
  --     devicons = {
    --
    --       default_icon = {
    --         icon = ""
    --       },
    --
    --       solidity = {
    --         icon = "",
    --       },
    --     },

    --   overrides.web_devicons,
    -- 
    -- config = function()
    --   require("nvim-web-devicons").setup(overrides.web_devicons)
    -- end,
    --
    -- lazy = false






  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },


  -- Copilot
  {
    'github/copilot.vim',
    lazy = false
  },


  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope
  },


  -- UndoTree
  {
    "mbbill/undotree",
    lazy = false
  },

  -- {
  --   "neoclide/coc.nvim",
  --   branch = "master",
  --   build = "yarn install --frozen-lockfile",
  --   lazy= false,
  -- }


  -- Dashboard
  -- {
  --   "goolord/alpha-nvim",
  --   lazy= false,
  --   priority = 1000,
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons'
  --   },
  --
  --   opts = overrides.alpha,
  --
  --   config = function()
  --     require("alpha").setup(require'alpha.themes.dashboard'.config)
  --   end
  --
  -- },
  --
}




  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
-- }

return plugins
