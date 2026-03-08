return {
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        dependencies = {
            {
                'folke/lazydev.nvim',
                ft = 'lua',
                opts = {
                    library = {
                        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
                    },
                },
            },
            { 'ms-jpq/coq_nvim',       branch = 'coq' },
            { 'ms-jpq/coq.artifacts',  branch = 'artifacts' },
            { 'ms-jpq/coq.thirdparty', branch = '3p' },
        },
        init = function()
            vim.g.coq_settings = {
                auto_start = true,
            }
        end,
        config = function()
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('rust_analyzer')
            vim.lsp.enable('zls')

            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end

                    if client.supports_method('textDocument/formatting') then
                        -- Format buffer on save
                        vim.api.nvim_create_autocmd('BufWritePre', {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                            end,
                        })
                    end
                end,
            })
        end,
    },
}
