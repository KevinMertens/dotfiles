-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      mappings = {
        h = "parent_or_close",
        l = "child_or_open",
      },
    })
  end,
}
