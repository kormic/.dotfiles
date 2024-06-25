local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.formatting.stylua,
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.diagnostics.eslint_d,
}

null_ls.setup({ sources = sources })

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
