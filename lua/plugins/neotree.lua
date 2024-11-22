return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
		}
	},
	config = function()
		-- Configurar transparencia en NeoTree
		require("transparent").setup({
			enable = true,          -- Habilitar transparencia
			extra_groups = {
				"NeoTreeNormal",      -- Fondo principal de NeoTree
				"NeoTreeNormalNC",    -- Fondo inactivo de NeoTree
				"NeoTreeEndOfBuffer", -- Fondo del final del buffer
			},
			exclude = {},           -- Puedes excluir otros grupos si es necesario
		})

		-- Asegurarte de que los grupos de colores tengan fondo transparente
		vim.cmd([[
      highlight NeoTreeNormal guibg=NONE ctermbg=NONE
      highlight NeoTreeNormalNC guibg=NONE ctermbg=NONE
      highlight NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
    ]])
	end
}
