return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cpp", "cmake", "lua" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
