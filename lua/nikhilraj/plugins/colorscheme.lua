return {
  'nyoom-engineering/oxocarbon.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.opt.background = "dark"
    vim.cmd.colorscheme 'oxocarbon'
  end,
}