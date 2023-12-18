return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = function(_, opts)
    opts.ignore_install = { "help" }

    -- To extend the default config, use the code below:
    vim.list_extend(opts.ensure_installed, {
      "lua",
      "vim",
      "python",
      "tsx",
      "json",
      "bash",
      "typescript",
    })
  end,
}
