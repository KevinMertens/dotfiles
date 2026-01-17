-- https://github.com/folke/tokyonight.nvim

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      transparent = true,
      on_colors = function(colors)
        colors.bg_statusline = colors.none
      end,
    })

    vim.cmd.colorscheme("tokyonight")
  end,
}
