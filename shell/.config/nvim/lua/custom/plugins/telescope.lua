return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = {
                        theme = 'ivy',
                        follow = true,
                        hidden = true,
                    },
                    live_grep = {
                        theme = 'ivy',
                        hidden = true,
                    },
                    grep_string = {
                        theme = 'ivy',
                        hidden = true,
                    },
                },
                extensions = {
                    fzf = {},
                },
            }

            require('telescope').load_extension('fzf')

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>tf', builtin.find_files)
            vim.keymap.set('n', '<leader>th', builtin.help_tags)
            vim.keymap.set('n', '<leader>tl', builtin.live_grep)
            vim.keymap.set('n', '<leader>ts', builtin.grep_string)
            vim.keymap.set('n', '<leader>tr', builtin.lsp_references)
        end,
    }
}
