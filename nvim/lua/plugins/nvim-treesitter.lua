return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    vim.cmd("colorscheme tokyonight")

    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = 
      {
        "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" 
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    }) 

  end,

}
