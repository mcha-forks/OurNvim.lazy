return {
  {"tzachar/fuzzy.nvim",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope-fzf-native.nvim"
    },
  },
  {
    "tzachar/cmp-fuzzy-buffer",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "tzachar/fuzzy.nvim"
    },
  },
  {
    "tzachar/cmp-fuzzy-path",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "tzachar/fuzzy.nvim"
    },
  },
}
