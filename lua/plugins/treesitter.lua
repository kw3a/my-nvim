return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local config = require("nvim-treesitter.configs")
    config.setup({
        ensure_installed = {"go", "markdown", "c", "lua", "vim", "vimdoc", "query" },
        auto_install = true,
        sync_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
    })
    end,
}
