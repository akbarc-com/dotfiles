local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })
Plug('mg979/vim-visual-multi', { ['branch'] = 'master' })
vim.call('plug#end')

vim.g.mapleader = ' '

-- vim.opt.filetype = off
-- vim.opt.syntax = off
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.keymap.set('i', '<c-h>', '<Esc>', { noremap = true })

vim.api.nvim_create_autocmd("InsertCharPre", {
  pattern = "*",
  callback = function()
    vim.opt.autoindent = true
  end,
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>qe', ':bnext<cr>', { desc = 'Next Buffers' })
vim.keymap.set('n', '<leader>qw', ':bprevious<cr>', { desc = 'Previous Buffers' })

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "vendor",
    }
  }
}
