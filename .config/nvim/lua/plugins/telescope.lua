return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-file-browser.nvim',
            config = function()
                require('telescope').load_extension('file_browser')
            end
        },
    },
    config = function()
        local actions = require('telescope.actions')
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            },
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                },
            }
        })

        local builtin = require('telescope.builtin')

        -- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>e', ':ene <BAR> startinsert<CR>', { desc = 'New File' })
        vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        vim.keymap.set('n', '<leader>fi', function()
            require('telescope').extensions.file_browser.file_browser({
                path = "~/.config/nvim/",
                prompt_title = "Neovim Config",
                grouped = true,
                cwd_only = true, 
                hidden = true,
            });
        end, { desc = "Telescope Nvim Config" })

        vim.keymap.set('n', '<leader>cd', function()
          require('telescope').extensions.file_browser.file_browser({
            prompt_title = "File Browser",
            grouped = true,
            hidden = true,
          })
        end, { desc = "Telescope File Browser" })

    end
}
