return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>l", "<cmd>Neotree toggle<cr>", desc = "[L]ist Files" },
  },
  config = function ()
    require('neo-tree').setup {}
  end,
}
