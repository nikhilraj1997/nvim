return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  event = {"BufReadPre", "BufNewFile"}, -- Load Treesitter when opening a file
  build = ':TSUpdate',
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    ensure_installed = { 'bash', 'c', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc' },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
  config = function(_, opts)
    -- import nvim-treesitter
    local treesitter = require('nvim-treesitter.configs')

    -- Set up treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      -- enable indentdation
      indent = {
        enable = true,
      },
      -- enable autotag (w/ nvim-ts-autotag)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        'bash',
        'c',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'vim',
        'vimdoc',
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "css",
        "prisma",
        "markdown_inline",
        "svelte",
        "graphql",
        "query",
        "python",
        "go",
        "diff",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}