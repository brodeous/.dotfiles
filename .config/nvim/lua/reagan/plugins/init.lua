return {
    { 'nvim-lua/plenary.nvim' },
    {
		'romainl/Apprentice',
		config = function()
		    vim.cmd('colorscheme apprentice')
		end,
	},
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'dart-lang/dart-vim-plugin' }
}
