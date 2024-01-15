return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'windwp/nvim-ts-autotag',
    -- 'nvim-treesitter/nvim-treesitter-context',
    'JoosepAlviste/nvim-ts-context-commentstring',
    -- 'tpope/vim-commentary',
    'numToStr/Comment.nvim',
    -- opts = {
    --     -- add any options here
    -- },
    -- lazy = false,
  },
  config = function ()
    local configs = require("nvim-treesitter.configs")
    require('Comment').setup()
    configs.setup({
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true },
      modules = {},
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<leader>ss',
            node_incremental = '<leader>nn',
            node_decremental = '<leader>np',
            scope_incremental = '<leader>sn',
            scope_dencremental = '<leader>sp',
          },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['aa'] = '@parameter.outer',
              ['ia'] = '@parameter.inner',
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
        },
      }
    }) -- Remove the trailing comma here
  end,
  build = ':TSUpdate',
}
