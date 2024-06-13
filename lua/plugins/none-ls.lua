return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- LUA
        null_ls.builtins.formatting.stylua,
        -- GO
        null_ls.builtins.diagnostics.staticcheck,
        -- JS, HTML
        null_ls.builtins.formatting.prettier,
      },
    })
  end,
}
