vim.pack.add { gh 'goolord/alpha-nvim' }
if vim.g.have_nerd_font then vim.pack.add { gh 'nvim-tree/nvim-web-devicons' } end

local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'
local function spacing(lines) return { type = 'padding', val = lines } end

dashboard.section.header.val = {
  '⠀⠀⠀⠀⢠⡶⠚⢷⣤⡀⠀⠀⠀⠀⠀⣲⡶⠛⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⢠⡿⠁⠀⠀⠙⣷⣄⠀⢀⣴⡟⠁⠀⠀⢷⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⣾⠃⠀⠠⠶⠚⠛⠛⠛⠛⠋⠀⠀⣀⡀⢸⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⢸⣏⡔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠉⠉⣿⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⢾⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⢠⣿⢠⣶⡆⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀',
  '⢒⡾⠁⠘⠟⠁⠀⠀⠀⠀⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠉⣧⠀⠀⠀⠀⠃⠀⠀⠀⠈⠉⠠⣍⠀⠀⠀⠀⠀⠀⣸⡇        ',
  '⠀⠸⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡟         ',
  '⠀⠀⠀⠛⣷⡦⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⡴⠞⠋          ',
}

dashboard.section.buttons.val = {
  dashboard.button('f', ' ' .. ' Find file', '<cmd>Telescope find_files<cr>'),
  dashboard.button('n', ' ' .. ' New file', '<cmd> ene | startinsert <cr>'),
  dashboard.button('r', ' ' .. ' Recent files', '<cmd>Telescope oldfiles<cr>'),
  dashboard.button('g', ' ' .. ' Find text', '<cmd>Telescope live_grep<cr>'),
  dashboard.button('c', ' ' .. ' Config', '<cmd>Telescope find_files cwd=~/.config/nvim<cr>'),
  dashboard.button('q', ' ' .. ' Quit', '<cmd>qa<cr>'),
}

dashboard.config.layout = {
  spacing(2),
  dashboard.section.header,

  spacing(3),
  dashboard.section.buttons,

  spacing(2),
  dashboard.section.footer,
}

alpha.setup(dashboard.opts)
