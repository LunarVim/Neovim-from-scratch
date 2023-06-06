local colorscheme = "catppuccin-frappe"
--[[ local colorscheme = "default" ]]
--[[ local colorscheme = "tokyonight-moon" ]]
local catppuccin_ok, catppuccin = pcall(require, "catppuccin")
if catppuccin_ok then
	catppuccin.setup({
		flavor = "frappe",
		--[[ custom_highlights = function(colors) ]]
		--[[ 	return { ]]
		--[[ 		TabLine = { ]]
		--[[ 			bg = "#db2518", ]]
		--[[ 			fg = "#22db18", ]]
		--[[ 		}, ]]
		--[[ 	} ]]
		--[[ end, ]]
	})
end
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
