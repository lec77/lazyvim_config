return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  "nvim-treesitter/nvim-treesitter-context",

  "github/copilot.vim",
  init = function()
    vim.g.copilot_filetypes = {
      ["plaintext"] = false,
      ["markdown"] = false,
    }
  end,
}
