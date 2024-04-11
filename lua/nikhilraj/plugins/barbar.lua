return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  event = 'BufEnter',
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
  config = function()
    require('barbar').setup {
      auto_hide = false,
      sidebar_filetypes = {
        NvimTree = true,
      },
      -- Enable/disable current/total tabpages indicator (top right corner)
      tabpages = true,

      -- Enables/disable clickable tabs
      --  - left-click: go to buffer
      --  - middle-click: delete buffer
      clickable = true,
      focus_on_close = 'left',
    }

    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
  end,
}

