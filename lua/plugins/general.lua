return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  "nvim-treesitter/nvim-treesitter-context",

  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      highlight = {
        enable = true,
        disable = { 'markdown' },
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    },
  },

  -- Disable after update
  {
    "akinsho/bufferline.nvim",
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
  },
}
