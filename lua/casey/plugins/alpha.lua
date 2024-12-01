-- A pretty starter page when you open neovim

return {
    'goolord/alpha-nvim',
    dependencies = {
		'nvim-tree/nvim-web-devicons',
		'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
