return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    -- vim.lsp.enable('steep')
    vim.lsp.config('steep', {
      cmd = { 'steep', 'langserver', '--jobs=4' },
      root_dir = lspconfig.util.root_pattern('Steepfile')(vim.fn.getcwd()),
      filetypes = { 'ruby' },
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        vim.diagnostic.config {
          float = {
            border = "rounded",
          },
          serverity_sort = true,
          virtual_text = false,
        }

        vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, { buffer = args.buf, desc = 'Format document' })

        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
            update_in_insert = true,
            virtual_text = false,
          }
        )

        vim.api.nvim_set_option('updatetime', 300)
        vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
        vim.api.nvim_create_autocmd({ "CursorHold" }, {
          pattern = "*",
          callback = function()
            vim.diagnostic.open_float()
          end,
          group = "lsp_diagnostics_hold",
        })
      end
    })
  end
}
