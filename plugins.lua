local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

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

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   opts = overrides.nvimtree,
  -- },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
   "folke/which-key.nvim",
    disable = false,
  },
  {
   "kevinhwang91/nvim-hlslens",
    config = function ()
      require("custom.configs.nvim-hlslens")
    end,
  },
  {
   "Pocco81/AutoSave.nvim",
    config = function ()
      require("custom.configs.AutoSave")
    end,
  },
  {
   "petertriho/nvim-scrollbar",
    config = function ()
      require("custom.configs.nvim-scrollbar")
    end
  },
  {
   "rcarriga/nvim-notify",
    config = function ()
      require("custom.configs.nvim-notify")
    end
  },
  {
   "folke/todo-comments.nvim",
    config = function ()
      require("custom.configs.todo-comments")
    end
  },
  {
   "tami5/lspsaga.nvim",
    config = function ()
      require("custom.configs.lspsaga")
    end
  },
  {
   "folke/neodev.nvim",
    after = "nvim-lspconfig",
    config = function ()
      require("custom.configs.neodev")
    end
  },
  {
   "ray-x/lsp_signature.nvim",
    config = function ()
      require("custom.configs.lsp_signature")
    end
  },
  {
   "kosayoda/nvim-lightbulb",
    config = function ()
      require("custom.configs.nvim-lightbulb")
    end
  },
  {
   "stevearc/dressing.nvim",
    config = function ()
      require("custom.configs.dressing")
    end
  },
  {
   "sindrets/diffview.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    },
    after = "plenary.nvim",
    cmd = {
      'DiffviewOpen',
      'DiffviewFileHistory',
      'DiffviewClose',
      'DiffviewToggleFiles',
      'DiffviewFocusFiles',
      'DiffviewRefresh'
    },
    config = function ()
      require("custom.configs.diffview")
    end

  },
  {
   "kdheepak/lazygit.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    },
    config = function ()
      require("custom.configs.lazygit")
    end
  },
  {
   "jdhao/better-escape.vim",
    config = function ()
      require("custom.configs.better-escape")
    end
  },
  {
   "vim-scripts/DoxygenToolkit.vim",
    ft = "cpp"
  },
  {
   "aperezdc/vim-template",
    config = function ()
      local utils = require("custom.utils")
      vim.g.templates_directory = utils.join_paths(vim.fn.stdpath("config"), "lua", "custom", "template")
      -- NOTE:replace with your own email address if not correct
      vim.g.user = utils.get_git_user()
      vim.g.email = utils.get_git_email()
    end
  },
  {
   "yamatsum/nvim-cursorline",
    config = function()
      require("custom.configs.nvim-cursorline")
    end
  },
  {
   "gpanders/editorconfig.nvim",
  },
  {
    "lambdalisue/suda.vim",
    config = function ()
      require("custom.configs.suda")
    end
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function ()
      
    end
  }
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins
