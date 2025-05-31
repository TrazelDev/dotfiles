return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = false }, -- Set enable to false for highlighting
    indent = { enable = false },    -- Set enable to false for indentation
    autotag = { enable = false },   -- Set enable to false for autotag (if you use it)
    context_commentstring = { enable = false }, -- Disable other features if present
    incremental_selection = { enable = false },
    textobjects = { enable = false },
    -- Keep ensure_installed if you want parsers to be available later,
    -- but they won't be used if features are disabled.
    ensure_installed = {
      "c", -- You can keep this, it just won't be active
      -- ... other languages
    },
    -- Remove or comment out any specific language disables if you disable globally
    -- disable = { "c" }, -- This is not needed if you disable globally
    -- ... other treesitter options
  },
  -- ... other plugin options
}
