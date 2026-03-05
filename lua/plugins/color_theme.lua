return {
  { "ellisonleao/gruvbox.nvim", config = true, opts = ... },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = { bold = true },
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus",
        },
      })

      local function auto_switch_theme()
        local hour = tonumber(os.date("%H"))
        if hour >= 6 and hour < 18 then
          vim.o.background = "light"
        else
          vim.o.background = "dark"
        end
        vim.cmd("colorscheme kanagawa")
      end

      local function get_ms_to_next_hour()
        local current_time = os.time()
        local current_min = tonumber(os.date("%M", current_time))
        local current_sec = tonumber(os.date("%S", current_time))
        local seconds_to_next_hour = (60 - current_min - 1) * 60 + (60 - current_sec)
        return seconds_to_next_hour * 1000 + 100
      end

      auto_switch_theme()

      local timer = vim.uv.new_timer()
      if timer then
        local initial_delay = get_ms_to_next_hour()
        timer:start(initial_delay, 3600000, vim.schedule_wrap(auto_switch_theme))
      end

      vim.keymap.set("n", "<leader>tt", function()
        if vim.o.background == "dark" then
          vim.o.background = "light"
        else
          vim.o.background = "dark"
        end
        vim.cmd("colorscheme kanagawa")
      end, { desc = "Toggle theme" })
    end,
  },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
