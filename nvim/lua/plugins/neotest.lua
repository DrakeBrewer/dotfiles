return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'lawrence-laz/neotest-zig',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('neotest').setup {
      -- summary = {
      --   open = 'botright vsplit | vertical resize 80',
      -- },
      adapters = {
        require 'neotest-zig' {
          dap = {
            adapter = 'codelldb',
          },
        },
      },
    }
  end,
  keys = {
    {
      '<leader>nts',
      function()
        -- require('neotest').output_panel.toggle()
        require('neotest').summary.toggle()
      end,
      desc = '[N]eo[T]est [S]ummary',
    },
    {
      '<leader>ntf',
      function()
        require('neotest').run.run()
      end,
      desc = 'run current file',
    },
    {
      '<leader>ntr',
      function()
        require('neotest').run.run()
      end,
      desc = 'run nearest test',
    },
    {
      '<leader>ntw',
      function()
        require('neotest').watch.toggle()
      end,
      desc = 'watch nearest test',
    },
  },
}
