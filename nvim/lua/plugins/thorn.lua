return {
	"jpwol/thorn.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		theme = "dark", -- 'light' or 'dark' - defaults to vim.o.background if unset
		background = "warm", -- options are 'warm' and 'cold'

		transparent = false, -- transparent background
		terminal = true, -- terminal colors

		styles = {
			keywords = { italic = true, bold = false },
			comments = { italic = true, bold = false },
			strings  = { italic = true, bold = true },

			diagnostic = {
				underline = true, -- if true, flat underlines will be used. Otherwise, undercurls will be used

				-- true will apply the bg highlight, false applies the fg highlight
				error = { highlight = true, },
				hint  = { highlight = false, },
				info  = { highlight = false, },
				warn  = { highlight = false, },
			},
		},

		on_highlights = function(hl, palette)

			-- setting options by member preserves other options for that group
			hl.String.bold = true
			hl.Function.fg = "#D9ADD4"

			-- setting options by table will CLEAR any other options for that group
			hl.Keyword = { fg = "#F9ADA0", italic = true } -- would clear bold and bg if they were set


			-- you can also use the theme's palette
			hl.String.fg = palette.lightgreen
		end , -- apply your own highlights
	},
}
