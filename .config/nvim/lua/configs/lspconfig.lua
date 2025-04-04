-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "dockerls",
  "jsonls",
  "ts_ls",
  "gopls",
  "rust_analyzer",
  "clangd",
  "jdtls",
  "pylsp",
  "html",
  "htmx",
  "templ",
}
local nvlsp = require "nvchad.configs.lspconfig"

require("lspconfig").gopls.setup {}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- js / ts
lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  root_dir = lspconfig.util.root_pattern "package.json",
  filetypes = {
    "javascript",
  },
}

lspconfig.denols.setup {
  on_attach = nvlsp.on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}

-- C / Cpp
lspconfig.clangd.setup {
  filetypes = { "c", "cpp", "objc", "objcpp" },
}

-- python
lspconfig.pylsp.setup {
  filetypes = { "python" },
}

-- lspconfig.pylyzer.setup {
--   filetypes = { "python" },
--   settings = {
--     python = {
--       checkOnType = false,
--       diagnostics = true,
--       inlayHints = true,
--       smartCompletion = true
--     }
--   }
-- }
