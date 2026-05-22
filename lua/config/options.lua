--[[

Commands to remember
:help X
"<space>sh"
:checkhealth

--]]

vim.loader.enable()

-- Set <space> as the leader key
-- `:help mapleader`
-- NOTE:: Must happen before plugins are loaded
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = false
-- enable mouse mode
vim.o.mouse = 'a'
vim.o.showmode = false

-- sync clipboard between os and nvim
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
vim.o.breakindent = true
vim.o.undofile = true

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

-- `:help 'list'`
-- `:help 'listchars'`
-- set using `vim.opt`
-- `:help lua-options`
-- `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 1

vim.o.confirm = true
