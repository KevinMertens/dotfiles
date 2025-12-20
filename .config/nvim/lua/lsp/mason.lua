-- https://github.com/mason-org/mason.nvim

return {
  -- https://github.com/mason-org/mason.nvim
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  -- https://github.com/mason-org/mason-lspconfig.nvim
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
  }
}
