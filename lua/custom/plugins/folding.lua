return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },
  config = function(_, opts)
    -- Set nvim folding configuration
    vim.opt.foldcolumn = '1'
    vim.opt.foldlevel = 99
    vim.opt.foldenable = true
    vim.foldlevelstart = 99

    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

    require('ufo').setup(opts)
  end,
}
