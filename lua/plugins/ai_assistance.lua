return {
  -- {
  --   "github/copilot.vim",
  --   init = function()
  --     vim.g.copilot_filetypes = {
  --       ["plaintext"] = false,
  --       ["markdown"] = false,
  --     }
  --   end,
  -- },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<Tab>",
            next = "<C-l>",
            prev = false,
            dismiss = false,
          },
        },
        panel = { enabled = false },
      })
    end,
  },
}
