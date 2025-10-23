return {
	"oribarilan/lensline.nvim",
	tag = "2.0.0", -- or: branch = 'release/2.x' for latest non-breaking updates
	event = "LspAttach",
	config = function()
		require("lensline").setup({
			profiles = {
				{
					name = "minimal",
					style = {
						placement = "inline",
						prefix = "",
						-- render = "focused", optionally render lenses only for focused function
					},
				},
			},
		})
	end,
}
