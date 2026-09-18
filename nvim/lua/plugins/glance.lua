return {
  -- 1. Glance (LSP peek preview)
  {
    "dnlhc/glance.nvim",
    cmd = "Glance",
    config = function()
      require("glance").setup()
    end,
  },
}
