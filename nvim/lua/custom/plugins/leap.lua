return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    dependencies = { 'tpope/vim-repeat' },
    config = function()
      vim.keymap.set({ 'n', 'x' }, '<leader>sl', '<Plug>(leap)', { desc = '[S]earch with [L]eap' })
    end,
  },
}
