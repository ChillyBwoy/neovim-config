require "options"
require "colorscheme"
require "plugins"

-- Neovim doesn't support snippets out of the box, so we need to mutate the
-- capabilities we send to the language server to let them know we want snippets.
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require "config/cmp"
require "config/gitsigns"
require "config/lspconfig"
require "config/nvim-tree"
require "config/nvim-treesitter"
