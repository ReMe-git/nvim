local cmp = require("cmp")
local lspkind = require('lspkind')

local options = {
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    mapping ={
    ['<A-,>'] = cmp.mapping.select_prev_item(),
    
    ['<A-.>'] = cmp.mapping.select_next_item(),

    ['<A-/>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
        },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
      }, {
        { name = 'buffer' },
        { name = 'path' }
      }),
    formatting = {
      format = lspkind.cmp_format({
        with_text = true, -- do not show text alongside icons
        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        before = function (entry, vim_item)
          -- Source 显示提示来源
          vim_item.menu = "["..string.upper(entry.source.name).."]"
          return vim_item
        end
      })
    },
}

return options
