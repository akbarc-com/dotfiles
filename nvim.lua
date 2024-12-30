local vim = vim

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

