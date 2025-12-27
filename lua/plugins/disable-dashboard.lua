return {
  -- Disable LazyVim dashboard
  {
    "folke/snacks.nvim",
    priority = 1000,
    opts = {
      dashboard = { enabled = false },
    },
  },

  -- Disable alpha dashboard if present
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
}

