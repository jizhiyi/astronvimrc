return {
  "stevearc/aerial.nvim",
  opts = {},
  -- Optional dependencies
  cmd = { "AerialToggle", "AerialNavToggle" },
  keys = {
    { "<leader>lo", "<cmd>AerialNavToggle<CR>", desc = "Toggle outline" },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
