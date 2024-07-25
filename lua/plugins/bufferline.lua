return {
  'akinsho/bufferline.nvim',
	opts = function()
		return require('plugin-configs.bufferline')
	end,
  config = function(_, opts)
		require('bufferline').setup(opts)
  end
}
