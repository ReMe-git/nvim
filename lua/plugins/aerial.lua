return {
  'stevearc/aerial.nvim',
  opts = function()
		return require('plugin-configs.aerial')
	end,
	config = function(_, opts)
		require("aerial").setup(opts)
	end,
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
}
