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
        dotfiles = true,
        custom = { '.DS_Store' },
      },
      git = {
        ignore = true,
      },
    }

    --set keymaps
    vim.keymap.set('n', '<leader>fe', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle [f]ile [e]xplorer' })
    vim.keymap.set('n', '<leader>tf', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh Nvim[T]ree [f]ile explorer' })
  end,
}

