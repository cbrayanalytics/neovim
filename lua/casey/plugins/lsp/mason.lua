return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓ ",
					package_pending = "➜ ",
					package_uninstalled = "✗ ",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"golangci_lint_ls",
				"jsonls",
				"lua_ls",
				"markdown_oxide",
				"pyright",
				"grammarly",
				"gitlab_ci_ls",
				-- add new language servers here.
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"beautysh",
				"shfmt",
				"goimports",
				"gofumpt",
				"golines",
				"shellcheck", -- bash linter
				"luacheck",
				"golangci-lint", -- go linter
				"markdownlint", -- markdown linter
				"markdownlint-cli2",
				"pylint",
				"yamllint", -- yaml linter
			},
		})
	end,
}
