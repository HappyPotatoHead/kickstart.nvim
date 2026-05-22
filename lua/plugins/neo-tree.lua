-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
if vim.g.have_nerd_font then vim.pack.add { gh 'nvim-tree/nvim-web-devicons' } end

vim.pack.add {
  gh 'nvim-lua/plenary.nvim',
  gh 'MunifTanjim/nui.nvim',
  gh 'nvim-neo-tree/neo-tree.nvim',
}

require('neo-tree').setup {
  close_if_last_window = false,
  filesystem = {
    window = {
      width = 30,
      mappings = {
        ['\\'] = 'close_window',
        ['?'] = 'show_help',
      },
    },
  },
  default_component_configs = {
    git_status = {
      symbols = {
        added = '✚',
        modified = '',
        deleted = '✖',
        renamed = '  ',
        untracked = '',
        ignored = '',
        unstaged = '  ',
        staged = '',
        conflict = '',
      },
    },
  },
}
