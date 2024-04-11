return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { hl = 'GitSignsAdd', text = 'U', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
      change = { hl = 'GitSignsChange', text = 'M', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
      delete = { hl = 'GitSignsDelete', text = 'D', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
      topdelete = { hl = 'GitSignsDelete', text = 'D', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
      changedelete = { hl = 'GitSignsChange', text = 'D-', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    },
  }
}