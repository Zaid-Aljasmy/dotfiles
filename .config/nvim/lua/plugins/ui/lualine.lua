return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                icons_enabled = true,
                theme = 'tokyonight',
                -- component_separators = { left = '|', right = '|'},
                -- section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            
            -- tabline = {
            --     lualine_a = {'buffers'},
            --     lualine_z = {'tabs'}
            -- }
        }
    }
}

-- left = '', right = '' 

