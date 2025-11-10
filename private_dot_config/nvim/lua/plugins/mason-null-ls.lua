return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason-org/mason.nvim",
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls.nvim",
  },
  opts = {
    automatic_setup = true,
    handlers = {},
  },
}
