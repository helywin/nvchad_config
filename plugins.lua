return {
   ["lewis6691/gitsigns.nvim"] = {
      requires = {
             "nvim-lua/plenary.nvim"
      },
      config = function()
          require("custom.conf.gitsigns")
      end
   }
}
