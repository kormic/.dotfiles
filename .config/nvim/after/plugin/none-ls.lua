local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.prettier,
  require("none-ls.diagnostics.eslint"),
}

null_ls.setup({ sources = sources })

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
