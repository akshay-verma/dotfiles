return {
  "stevearc/conform.nvim",
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
    },
    -- Customize formatters
    formatters = {},
  },
}
