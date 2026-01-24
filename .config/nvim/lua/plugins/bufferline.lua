-- https://github.com/akinsho/bufferline.nvim

return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            separator = false,
            text_align = "center",
          },
        },
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        show_buffer_close_icons = true,
      },
    })
  end,
}
