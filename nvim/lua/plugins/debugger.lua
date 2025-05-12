return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    {
      'mfussenegger/nvim-dap',
      name = 'nvim-dap',
      dir = os.getenv 'HOME' .. '/.local/share/nvim/lazy/nvim-dap',
      -- dependencies = {
      --   { 'leoluz/nvim-dap-go', name = 'nvim-dap-go', dir = os.getenv 'HOME' .. '/.local/share/nvim/lazy/dap-go' },
      -- },
      keys = {
        {
          '<leader>dl',
          function()
            require('dap').run_last()
          end,
          desc = '[l] dap run last',
        },
        {
          '<leader>dc',
          function()
            require('dap').continue()
          end,
          desc = '[C]ontinue',
        },
        {
          '<leader>db',
          function()
            require('dap').set_breakpoint()
          end,
          desc = '[b] set breakpoint',
        },
        {
          '<leader>dw',
          function()
            require('dapui').elements.watches.add '/nat ... variable'
          end,
          desc = '[W]atch',
        },
        {
          '<leader>dt',
          function()
            require('dap').terminate()
          end,
          desc = '[T]erminate',
        },
      },
      config = function()
        local dap = require 'dap'
        dap.adapters.codelldb = {
          type = 'server',
          port = '${port}',
          executable = {
            command = os.getenv 'HOME' .. '/.local/share/nvim/mason/bin/codelldb',
            args = {
              '--port',
              '${port}',
            },
          },
        }
        -- dap.adapters.dlv = {
        --   type = 'server',
        --   port = '${port}',
        --   executable = {
        --     command = os.getenv 'HOME' .. '/.local/share/nvim/mason/bin/dlv',
        --     args = {
        --       'dap',
        --       '-l',
        --       '127.0.0.1' .. ':' .. '${port}',
        --     },
        --   },
        -- }
        dap.configurations.c = {
          {
            type = 'codelldb',
            request = 'launch',
            name = 'lldb',
            program = '${command:pickFile}',
          },
        }
        -- dap.configurations.go = {
        --   {
        --     type = 'dlv',
        --     request = 'launch',
        --     name = 'dlv',
        --     program = '${file}',
        --   },
        -- }
      end,
    },
    'nvim-neotest/nvim-nio',
  },
  keys = {
    {
      '<leader>dui',
      function()
        require('dapui').toggle()
      end,
      desc = '[dui] toggle dapui',
    },
  },
  opts = {},
  config = function(_, opts)
    require('dapui').setup(opts)
  end,
}
