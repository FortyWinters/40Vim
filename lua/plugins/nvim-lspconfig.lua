local on_attach = require("util.lsp").on_attach

local config = function()
  require("neoconf").setup({})
  local cmp_nvim_lsp = require("cmp_nvim_lsp")

  local lspconfig = require("lspconfig")

  local signs = { Error = "", Warn = "", Hint = "", Info = "" }

  for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  -- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = { -- custom settings for lua
			Lua = {
				-- make the language server recognize "vim" global
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					-- make language server aware of runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

  -- json
  lspconfig.jsonls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "json", "jsonc" },
  })

  -- bash
  lspconfig.bashls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "sh", "aliasrc" },
  })

  -- docker
  lspconfig.dockerls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })

  -- C/C++
  lspconfig.clangd.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
  })

  -- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

  -- golang
  lspconfig.gopls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  })

  -- rust
  lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {"rust"},
    settings = {
      ['rust-analyzer'] = {
        cargo = {
          allFeatures = true,
        },
      },
    },
  })

  local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
  local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
  local golangci_lint = require("efmls-configs.linters.golangci_lint")
  local goimports = require("efmls-configs.formatters.goimports")
  local eslint_d = require("efmls-configs.linters.eslint_d")
  local prettier_d = require("efmls-configs.formatters.prettier_d")
  local fixjson = require("efmls-configs.formatters.fixjson")
  local shellcheck = require("efmls-configs.linters.shellcheck")
  local shfmt = require("efmls-configs.formatters.shfmt")
  local hadolint = require("efmls-configs.linters.hadolint")
  local cpplint = require("efmls-configs.linters.cpplint")
  local clangformat = require("efmls-configs.formatters.clang_format")

  --configure efm server
  lspconfig.efm.setup({
    filetypes = {
      "lua",
      "json",
      "jsonc",
      "sh",
      "markdown",
      "docker",
      "c",
      "cpp",
      "python",
      "go",
    },
    init_options = {
      documentFormatting = true,
      documentRangeFormatting = true,
      hover = true,
      documentSymbol = true,
      codeAction = true,
      completion = true,
    },
    settings = {
      languages= {
        lua = { luacheck, stylua },
        json = { eslint_d, prettier_d },
        jsonc = { eslint_d, fixjson },
        sh = { shellcheck, shfmt },
        markdown = { prettier_d },
        docker = { hadolint, prettier_d },
        c = { clangformat, cpplint },
        cpp = { clangformat, cpplint },
        python = { flake8, black },
        go = { goimports, golangci_lint },
      },
    },
  })
end

return {
  "neovim/nvim-lspconfig",
  config = config,
  lazy = false,
  dependencies = {
    "windwp/nvim-autopairs",
    "williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
  },
}
