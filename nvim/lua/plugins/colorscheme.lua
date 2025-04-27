return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- make sure this matches
        integrations = {
          -- enable integrations as needed
          cmp = true,
          gitsigns = true,
          treesitter = true,
          telescope = { enabled = true },
          -- and more...
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
