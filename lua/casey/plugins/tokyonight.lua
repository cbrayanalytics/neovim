return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
	require("tokyonight").setup({
	})

	-- load colorcheme to neovim
	vim.cmd[[colorscheme tokyonight-moon]]
  end,
}
