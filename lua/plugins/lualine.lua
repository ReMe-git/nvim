return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = function()
			return require('plugin-configs.lualine')
		end,
    config = function(_, opts)
      require('lualine').setup(opts)
    end
}
