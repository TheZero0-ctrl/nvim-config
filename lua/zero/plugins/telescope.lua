return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>Ps', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search =  word })
    end)
    vim.keymap.set('n', '<leader>ps', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search =  word })
    end)
  end
}
