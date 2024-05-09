-- LSP configuration
return {
  {
    "neovim/nvim-lspconfig",

    -- disable format on save
    ---@class PluginLspOpts
    opts = function(_, opts)
      opts.autoformat = false

      opts.servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            "--header-insertion=never",
          },
        },
      }
    end,

  },
}

