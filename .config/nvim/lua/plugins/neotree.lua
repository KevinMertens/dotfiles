-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- TODO : lock neotree to project root!

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
      close_if_last_window = true,
      window = {
        position = "right",
        width = 50,
      },
      buffers = {
        follow_current_file = { enabled = true },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
    })
  end,
}
