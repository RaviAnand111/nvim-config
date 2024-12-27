return {
	--"folke/tokyonight.nvim",
	--"dgox16/oldworld.nvim",
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme kanagawa]])
	end,
}
