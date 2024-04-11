return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      icons_enabled = vim.g.have_nerd_font,
      options = {
        theme = 'molokai',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree' },
      },
      extensions = { 'fugitive', 'mason', 'lazy', 'fzf' },
    }
  end,
}

