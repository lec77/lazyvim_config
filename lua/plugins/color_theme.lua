return {
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  { "rebelot/kanagawa.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
