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
        local extensions = require('telescope').extensions

        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)

        vim.keymap.set('n', '<leader>fc', function()
            local filename_without_extension = vim.fn.expand('%:t:r')
            builtin.grep_string({ search = filename_without_extension })
        end, { desc = "Find current file: " })

        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({})
        end, { desc = "Find current string: " })

        vim.keymap.set('n', '<leader>fi', function()
            builtin.find_files({ cwd = "~/.config/nvim/" });
        end)

        vim.keymap.set('n', '<leader>fe', function()
         require('telescope').extensions.file_browser.file_browser({
          hidden = true,
    })
      end, { desc = "Telescope File Browser" })

    end
}

