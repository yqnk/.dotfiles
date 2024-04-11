require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- mason
map("n", "<leader>ma", "<cmd> MasonInstallAll <CR>", {
  desc = "Mason install all",
})

-- toggle lsp
map("n", "<leader>ls", "<cmd> LspStart <CR>", {
  desc = "Lsp start",
})
map("n", "<leader>lq", "<cmd> LspStop <CR>", {
  desc = "Lsp stop",
})
map("n", "<leader>lr", "<cmd> LspRestart <CR>", {
  desc = "Lsp restart",
})
-- leader quit
map("n", "<leader>Q", "<cmd> qall <CR>", {
  desc = "Quit all",
})
map("n", "<leader>q", "<cmd> q <CR>", {
  desc = "Quit",
})

-- move one line
map("n", "<A-j>", "<cmd> m +1 <CR>", {
  desc = "move current line",
})
map("n", "<A-k>", "<cmd> m -2 <CR>", {
  desc = "move current line",
})

-- move multiple lines
map("v", "<A-j>", ":move '>+1<CR>gv-gv", {
  desc = "move selected line",
})
map("v", "<A-k>", ":move '<-2<CR>gv-gv", {
  desc = "move selected line",
})

-- paste better
map("i", "<C-v>", '<esc>"+pi', { desc = "Paste from clipboard" })

-- duplicate line NOT WORKING
map({ "i", "n" }, "<C-d>", "<cmd> yyp <CR>", { desc = "Duplicate single line" })

local unmap = vim.keymap.del

unmap("i", "jk")
