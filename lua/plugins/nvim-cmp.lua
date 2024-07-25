return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'folke/lsp-colors.nvim',
    'onsails/lspkind-nvim'
  },
	opts = function()
		return require('plugin-configs.nvim-cmp')
	end,
  config = function(_, opts)
    -- Set up nvim-cmp.
    local cmp = require'cmp'
    local lspconfig = require('lspconfig')
    local lspkind = require('lspkind')
    cmp.setup(opts)

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    lspconfig.clangd.setup{capabilities = capabilities}
    lspconfig.pyright.setup{capabilities = capabilities}
  end
}
