return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = false },
    indent = { enable = false },

    ensure_installed = {
      "c",
      "python",
    },
  },
}
