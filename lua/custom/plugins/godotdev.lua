return {
  {
    'Mathijs-Bakker/godotdev.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
      'rcarriga/nvim-dap-ui',
    },
    config = function() require('godotdev').setup {} end,
  },
}
