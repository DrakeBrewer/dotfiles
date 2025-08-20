return {
    'saghen/blink.cmp',
    dependencies = {
        'xzbdmw/colorful-menu.nvim',
        'rafamadriz/friendly-snippets',
    },
    version = '1.*',

    config = function()
        require('blink.cmp').setup {
            completion = {
                menu = {
                    draw = {
                        columns = { { 'kind_icon' }, { 'label', gap = 1 } },
                        components = {
                            label = {
                                text = function(ctx)
                                    return require('colorful-menu').blink_components_text(ctx)
                                end,
                                highlight = function(ctx)
                                    return require('colorful-menu').blink_components_highlight(ctx)
                                end,
                            },
                        },
                    },
                },
            },
        }
    end,
}
