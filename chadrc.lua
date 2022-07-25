-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "onedark",
}

M.options = {
  user = function ()
  end
}

M.mappings = require("custom.mappings")

M.plugins = {
  user = require("custom.plugins"),
  override = {

  },
  options = {
    lspconfig = {
      -- setup_lspconf = "custom.plugins.lspconfig"
    }
  }
}

return M
