return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "rcasia/neotest-java",
    },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-java"))
    end,
  },
}
