-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Grep Integration --
local builtin = require("telescope.builtin")
local file_ignore_patterns = {
  "yarn%.lock",
  "node_modules/",
  "raycast/",
  "dist/",
  "%.next",
  "%.git/",
  "%.gitlab/",
  "build/",
  "target/",
  "package%-lock%.json",
}

vim.keymap.set("n", "<leader>sf", function()
  builtin.find_files({
    file_ignore_patterns = file_ignore_patterns,
  })
end, { desc = "[S]earch by [F]inding a word" })

vim.keymap.set("n", "<leader>fs", function()
  builtin.live_grep({ search = vim.fn.input("Grep > ") })
end, { desc = "Telescope find words in files" })

local conform = require("conform")
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = "Format file or range (in visual mode)" })
--              --

-- Remove Global Default Key mapping
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

-- Tab Managemenet
vim.keymap.set("n", "<Tab>n", function()
  vim.cmd("tabnew")
end, { desc = "Creates a new buffer" })
vim.keymap.set("n", "<Tab>d", function()
  vim.cmd("bd")
end, { desc = "Deletes a buffer" })

-- vim.lsp.inlay_hint.enable(true)
local severity = vim.diagnostic.severity

vim.diagnostic.config({
  signs = {
    text = {
      [severity.ERROR] = " ",
      [severity.WARN] = " ",
      [severity.HINT] = "󰠠 ",
      [severity.INFO] = " ",
    },
  },
})d on the VeryLazy event
 set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

