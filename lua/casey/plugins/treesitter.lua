
return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewfile" },
    build = ":TSUpdate",
    dependencies = {
	"windwp/nvim-ts-autotag",
    },
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "markdown", "markdown_inline", "python", "bash", "csv", "dot", "go", "goctl", "gomod", "gosum", "json",  },
          sync_install = false,
	  auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
	  autotag = { enable = true },
	   incremental_selection = {
		enable = true,
		keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
        })
    end
}
