return {
	"rcarriga/nvim-notify",

	config = function()
		local notify = require("notify")
		vim.notify = notify
		notify('Welcome Back, Noir')
		require('notify').setup({
			background_colour = '#000000',
		})
	end
}
