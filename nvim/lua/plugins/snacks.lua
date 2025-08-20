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
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                      
    █                                               █╗
    ██                                             ██║
    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███║
    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
    ██║                                            ██║
    ██║                                            ██║
    ╚═╝                                            ╚═╝
                                                      
    ]],
      },
    },
    image = { enabled = true },
  },
}
