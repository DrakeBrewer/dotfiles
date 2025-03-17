local telescope_conf = require('telescope.config').values
local function toggle_telescope(files)
  local file_paths = {}
  for _, item in ipairs(files.items) do
    table.insert(file_paths, item.value)
  end

  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = telescope_conf.file_previewer {},
      sorter = telescope_conf.generic_sorter {},
    })
    :find()
end
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  lazy = true,
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },

  keys = {
    {
      '<leader>hl',
      function()
        toggle_telescope(require('harpoon'):list())
      end,
    },
    {
      '<leader>hl',
      function()
        toggle_telescope(require('harpoon'):list())
      end,
      { desc = '[H]arpoon [L]ist' },
    },

    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      { desc = '[H]arpoon [A]dd' },
    },

    {
      '<leader>hd',
      function()
        require('harpoon'):list():remove()
      end,
      { desc = '[H]arpoon [D]elete' },
    },

    {
      '<leader>hc',
      function()
        require('harpoon'):list():clear()
      end,
      { desc = '[H]arpoon [C]lear' },
    },
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()
  end,
}
