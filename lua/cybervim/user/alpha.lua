local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")



local header = {
  [[                               __                ]],
  [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
  [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
  [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
  [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
  [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

header = {
  [[.____        .__         ]],
  [[|    | ___  _|__| _____  ]],
  [[|    | \  \/ /  |/     \ ]],
  [[|    |__\   /|  |  Y Y  \]],
  [[|_______ \_/ |__|__|_|  /]],
  [[        \/            \/ ]],
  [[        not really       ]]
}

header = {
  [[ __                                     ]],
  [[/\ \                 __                 ]],
  [[\ \ \       __  __  /\_\     ___ ___    ]],
  [[ \ \ \  __ /\ \/\ \ \/\ \  /' __` __`\  ]],
  [[  \ \ \L\ \\ \ \_/ | \ \ \ /\ \/\ \/\ \ ]],
  [[   \ \____/ \ \___/   \ \_\\ \_\ \_\ \_\]],
  [[    \/___/   \/__/     \/_/ \/_/\/_/\/_/]],
  [[             not really                 ]],
}

header = {

  [[ ██████╗██╗   ██╗██████╗ ███████╗██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
  [[██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██║   ██║██║████╗ ████║ ]],
  [[██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝██║   ██║██║██╔████╔██║ ]],
  [[██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
  [[╚██████╗   ██║   ██████╔╝███████╗██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
  [[ ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
}



dashboard.section.header.val = header

dashboard.section.buttons.val = {
	dashboard.button("f", "  find file", ":Telescope find_files <cr>"),
	dashboard.button("e", "  new file", ":ene <bar> startinsert <cr>"),
	dashboard.button("p", "  find project", ":Telescope projects <cr>"),
	dashboard.button("r", "  recently used files", ":Telescope oldfiles <cr>"),
	dashboard.button("t", "  find text", ":Telescope live_grep <cr>"),
	dashboard.button("c", "  configuration", ":e $myvimrc <cr>:NvimTreeOpen<CR>"),
	dashboard.button("q", "  quit neovim", ":qa<cr>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "evertonse.junior@gmail.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
