vim.pack.add { gh 'akinsho/bufferline.nvim' }
if vim.g.have_nerd_font then vim.pack.add { gh 'nvim-tree/nvim-web-devicons' } end

require('bufferline').setup {
  options = {
    mode = 'buffers',
    style_preset = require('bufferline').style_preset.default,
    diagnositcs = 'nvim_lsp',
    always_show_bufferline = false,

    offsets = {
      {
        filetype = 'neo-tree',
        text = 'Neo-tree',
        highlight = 'Directory',
        text_align = 'left',
      },
    },

    show_buffer_icons = vim.g.have_nerd_font,
    show_buffer_close_icons = false,
    show_close_icons = false,
  },
}

local map = function(keys, func, desc) vim.keymap.set('n', keys, func, { desc = 'Bufferline: ' .. desc }) end

-- cycle/jump between tabs
map('<S-h>', '<cmd>BufferLineCyclePrev<cr>', 'Prev Buffer')
map('<S-l>', '<cmd>BufferLineCycleNext<cr>', 'Next Buffer')
map('[b', '<cmd>BufferLineCyclePrev<cr>', 'Prev Buffer')
map(']b', '<cmd>BufferLineCycleNext<cr>', 'Next Buffer')

-- move/reorder tabs left and right
map('[B', '<cmd>BufferLineMovePrev<cr>', 'Move buffer prev')
map(']B', '<cmd>BufferLineMoveNext<cr>', 'Move buffer next')

-- interactive keyboard tab-picker
map('<leader>bj', '<cmd>BufferLinePick<cr>', 'Pick Buffer')

-- pinning and closing behaviors
map('<leader>bp', '<cmd>BufferLineTogglePin<cr>', 'Toggle Pin')
map('<leader>bP', '<cmd>BufferLineGroupClose ungrouped<cr>', 'Delete Non-Pinned Buffers')
map('<leader>br', '<cmd>BufferLineCloseRight<cr>', 'Delete Buffers to the Right')
map('<leader>bl', '<cmd>BufferLineCloseLeft<cr>', 'Delete Buffers to the Left')

-- tab closure
map('<leader>bd', '<cmd>bdelete<cr>', 'Close current buffer')
