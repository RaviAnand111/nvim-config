return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- formatting for lua
        null_ls.builtins.formatting.stylua,
        --formatting and linting for js and ts
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.diagnostics.eslint_d,
      },
    })
  end,
}
