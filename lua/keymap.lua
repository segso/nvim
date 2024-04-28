vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>;", "$a;<Esc>")
keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<c-d>", "<cmd>q<cr>")

keymap.set("n", "<leader>h", "<c-w>h")
keymap.set("n", "<leader>t", "<c-w>j")
keymap.set("n", "<leader>n", "<c-w>k")
keymap.set("n", "<leader>s", "<c-w>l")

keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")

keymap.set("v", "J", ":m '>+1<cr>gv=gv")
keymap.set("v", "K", ":m '<-2<cr>gv=gv")

keymap.set('x', '<leader>p', '"_dP')

keymap.set('n', '<leader>rh', '<cmd>botright new | :terminal<cr>')
keymap.set('n', '<leader>rs', '<cmd>botright vnew | :terminal<cr>')
keymap.set('t', '<esc>', '<c-\\><c-n>')

keymap.set('n', 'gn', '<cmd>bnext<cr>')

keymap.set('x', '<leader>y', '"+y')
keymap.set('n', '<leader>y', '"+y')

vim.keymap.set('n', '<leader>CH', function()
    vim.api.nvim_set_hl(0, 'NoCursor', { blend = 100, ctermfg = 0 })
    vim.cmd('set guicursor+=a:NoCursor/lCursor')
end)

vim.keymap.set('n', '<leader>CR', function()
    vim.api.nvim_set_hl(0, 'NoCursor', { blend = 100, ctermfg = 0 })
    vim.cmd('set guicursor-=a:NoCursor/lCursor')
end)
