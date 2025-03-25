return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@module 'snacks'
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        {
          section = 'terminal',
          cmd = 'chafa ~/.config/wall.png --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1',
          height = 17,
          padding = 1,
        },
        {
          pane = 2,
          { section = 'keys', gap = 1, padding = 1 },
          { section = 'startup' },
        },
      },
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = {
      enabled = true,
      win = {
        style = 'terminal',
        border = vim.g.border_style,
        position = 'float',
        height = 0.8,
        width = 0.8,
      },
    },
    words = { enabled = true },
  },
  keys = {
    {
      '<leader>tt',
      function()
        Snacks.terminal.toggle()
      end,
      desc = '[T]oggle [T]erminal',
    },
  },
}
