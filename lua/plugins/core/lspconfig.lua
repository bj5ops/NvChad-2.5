return function(activate)
  local plugin = {
    "neovim/nvim-lspconfig",
    enabled = false,
  }

  if activate then
    plugin = {
      "neovim/nvim-lspconfig",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("nvchad.configs.lspconfig").defaults()

        -- custom configs
        local on_attach = require("nvchad.configs.lspconfig").on_attach
        local on_init = require("nvchad.configs.lspconfig").on_init
        local capabilities = require("nvchad.configs.lspconfig").capabilities

        local lspconfig = require "lspconfig"

        -- list of all servers configured.
        lspconfig.servers = {
          "lua_ls",
          "intelephense",
        }

        -- list of servers configured with default config.
        local default_servers = {
          "bashls",
          "yamlls",
          "jsonls",
          "pyright",
          "dockerls",
          "docker_compose_language_service",
          "ansiblels",
          "marksman",
          "tsserver",
          "terraformls",
          "html",
          "cssls",
          "css_variables",
          "emmet_ls",
          "volar",
          "autotools_ls",
          "tailwindcss",
          "taplo",
        }

        -- lsps with default config
        for _, lsp in ipairs(default_servers) do
          lspconfig[lsp].setup {
            on_attach = on_attach,
            on_init = on_init,
            capabilities = capabilities,
          }
        end

        -- lsps with custom config lua_ls
        lspconfig.lua_ls.setup {
          on_attach = on_attach,
          on_init = on_init,
          capabilities = capabilities,

          settings = {
            Lua = {
              diagnostics = {
                enable = false, -- Disable all diagnostics from lua_ls
                -- globals = { "vim" },
              },
              workspace = {
                library = {
                  vim.fn.expand "$VIMRUNTIME/lua",
                  vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
                  vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
                  vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
              },
            },
          },
        }

        lspconfig.intelephense.setup {
          on_attach = on_attach,
          on_init = on_init,
          capabilities = capabilities,

          init_options = {
            globalStoragePath = os.getenv "HOME" .. "/.local/share/intelephense",
          },
        }
      end,
    }
  end

  return plugin
end
