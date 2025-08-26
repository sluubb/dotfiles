return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = {
                        hidden = true,
                        theme = 'ivy',
                    },
                },
                extensions = {
                    fzf = {},
                },
            }

            require('telescope').load_extension('fzf')

            vim.keymap.set('n', '<space>th', require('telescope.builtin').help_tags)
            vim.keymap.set('n', '<space>td', require('telescope.builtin').find_files)
            vim.keymap.set('n', '<space>tn', function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath('config'),
                }
            end)
        end,
    }
}
