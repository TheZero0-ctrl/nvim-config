local lsp_zero = require('lsp-zero')
require'lspconfig'.stimulus_ls.setup{}

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    solargraph = function ()
         require('lspconfig').solargraph.setup({
            settings = {
                solargraph = {
                    diagnostics = false
                }
            }
        })
    end,
    eslint = function ()
        require('lspconfig').eslint.setup({})
    end,
  },
})

-- require('lspconfig').solargraph.setup({
--     settings = {
--         solargraph = {
--             diagnostics = false
--         }
--     }
-- })

local cmp = require("cmp")
cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  })
})

