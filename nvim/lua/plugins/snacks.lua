return {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
        animate = {
            enabled = true,
            duration = 20, -- ms per step
            easing = 'linear',
            fps = 60, -- frames per second. Global setting for all animations
        },
        lazygit = { enabled = true },
        picker = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                header = [[
███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ 
███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ 
███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ 
 ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  
    ]],
            },
        },
        image = { enabled = true },
    },
    keys = {
        -- find
        {
            '<leader>fb',
            function()
                Snacks.picker.buffers()
            end,
            desc = 'Buffers',
        },
        {
            '<leader>fc',
            function()
                Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
            end,
            desc = 'Find Config File',
        },
        {
            '<leader>ff',
            function()
                Snacks.picker.files()
            end,
            desc = 'Find Files',
        },
        {
            '<leader>fg',
            function()
                Snacks.picker.git_files()
            end,
            desc = 'Find Git Files',
        },
        {
            '<leader>fp',
            function()
                Snacks.picker.projects()
            end,
            desc = 'Projects',
        },
        {
            '<leader>fr',
            function()
                Snacks.picker.recent()
            end,
            desc = 'Recent',
        },
        {
            '<leader>/',
            function()
                Snacks.picker.grep()
            end,
            desc = 'Grep',
        },
        {
            '<leader>sb',
            function()
                Snacks.picker.lines()
            end,
            desc = 'Buffer Lines',
        },
        {
            '<leader>sB',
            function()
                Snacks.picker.grep_buffers()
            end,
            desc = 'Grep Open Buffers',
        },
        {
            '<leader>sg',
            function()
                Snacks.picker.grep()
            end,
            desc = 'Grep',
        },
        {
            '<leader>sw',
            function()
                Snacks.picker.grep_word()
            end,
            desc = 'Visual selection or word',
            mode = { 'n', 'x' },
        },
        {
            '<leader>gs',
            function()
                Snacks.picker.git_status()
            end,
            desc = 'Git Status',
        },
    },
}
