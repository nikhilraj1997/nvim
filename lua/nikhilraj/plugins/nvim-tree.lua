return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_open = '',
              arrow_closed = '',
            },
          },
        },
      },
      -- disable window picker for explorer to work well with the windown splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '^.DS_Store$', 'node_modules', '^.git$', '^.cache$' },
      },
      git = {
        ignore = true,
      },
    }

    --set keymaps
    vim.keymap.set('n', '<leader>tt', '<cmd>NvimTreeToggle<CR>', { desc = 'Nvim[T]ree [T]oggle file explorer' })
    vim.keymap.set('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>', { desc = 'Nvim[T]ree [r]efresh file explorer' })
  end,
}
