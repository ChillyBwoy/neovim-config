local path_to_elixirls = vim.fn.expand "~/.elixir-ls/release/language_server.sh"

local lspconfig = require "lspconfig"

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.gopls.setup{}
lspconfig.elixirls.setup({
  cmd = {path_to_elixirls},
  capabilities = capabilities,
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- aquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false
    }
  }
})

