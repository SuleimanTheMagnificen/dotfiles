-- bootstrap lazy.nvim, LazyVim and your plugins
require("config")
require("lsp")
require("formatting")
require("telescope").setup({ defaults = { file_ignore_patterns = { "node_modules" } } })
-- Colorschemes:
-- tokyonight-{night\*-storm\*-day\*-moon}
-- rose-pine-{main\*-moon\*-dawn}
vim.cmd("colorscheme tokyonight-night")
