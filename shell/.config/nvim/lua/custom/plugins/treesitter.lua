return {
    {
        'nvim-treesitter/nvim-treesitter',
        enabled = true,
        lazy = false,
        branch = 'main',
        build = ':TSUpdate',
        config = function()
            local parsers = {
                'c',
                'zig',
                'lua',
                'zsh',
                'bash',
                'python',
                'markdown',
                'markdown_inline',
            }

            require('nvim-treesitter').install(parsers):wait(300000)

            vim.api.nvim_create_autocmd('FileType', {
                pattern = parsers,
                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
    },
}
