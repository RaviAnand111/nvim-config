-- vim commands
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set ignorecase")
vim.cmd("set relativenumber")
vim.cmd("set smartcase")

-- global leader - <space>
vim.g.mapleader = " "

-- map jk key to enter Normal mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

-- auto complete braces, quotes
--[[
vim.keymap.set("i", "{", "{}<Esc>ha", { noremap = true })
vim.keymap.set("i", "(", "()<Esc>ha", { noremap = true })
vim.keymap.set("i", "[", "[]<Esc>ha", { noremap = true })
vim.keymap.set("i", "<", "<><Esc>ha", { noremap = true })
]]--
vim.keymap.set("i", '"', '""<Esc>ha', { noremap = true })
vim.keymap.set("i", "'", "''<Esc>ha", { noremap = true })
vim.keymap.set("i", "`", "``<Esc>ha", { noremap = true })

-- switching windows/splits with space+h/l
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true })

-- keymaps for new tab, and tab next and previous
vim.keymap.set("c", "ntb", "tabnew<CR>", { noremap = true })
vim.keymap.set("c", "nt", "+tabnext<CR>", { noremap = true })
vim.keymap.set("c", "pt", "-tabnext<CR>", { noremap = true })

-- copying to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true })
vim.keymap.set("v", "<leader>p", '"+p', { noremap = true })
