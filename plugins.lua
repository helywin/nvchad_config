return {
  ["kevinhwang91/nvim-hlslens"] = {
    config = function()
      require("custom.conf.nvim-hlslens")
    end,
  },
  ["Pocco81/AutoSave.nvim"] = {
    config = function ()
      require("custom.conf.AutoSave")
    end,
  },
  ["petertriho/nvim-scrollbar"] = {
    config = function ()
      require("custom.conf.nvim-scrollbar")
    end
  },
  ["rcarriga/nvim-notify"] = {
    config = function ()
      require("custom.conf.nvim-notify")
    end
  },
  ["folke/todo-comments.nvim"] = {
    config = function ()
      require("custom.conf.todo-comments")
    end
  },
  ["tami5/lspsaga.nvim"] = {
    config = function ()
      require("custom.conf.lspsaga")
    end
  },
  ["folke/lua-dev.nvim"] = {
    config = function ()
      require("custom.conf.lua-dev")
    end
  },
  ["ray-x/lsp_signature.nvim"] = {
    config = function ()
      require("custom.conf.lsp_signature")
    end
  },
  ["kosayoda/nvim-lightbulb"] = {
    config = function ()
      require("custom.conf.nvim-lightbulb")
    end
  },
  ["stevearc/dressing.nvim"] = {
    config = function ()
      require("custom.conf.dressing")
    end
  }
}
