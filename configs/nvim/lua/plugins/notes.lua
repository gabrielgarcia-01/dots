return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "godlygeek/tabular",
  },
  -- {
  --   "preservim/vim-markdown",
  -- },
}
