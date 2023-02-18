require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
local lspconfig = require("lspconfig")

-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
	--sumneko_lua = require("user.lsp.config.lua"), -- lua/lsp/config/lua.lua
	--bashls = require("user.lsp.config.bash"),
	--pyright = require("user.lsp.config.pyright"),
	--emmet_ls = require("user.lsp.config.emmet"),
	--jsonls = require("user.lsp.config.json"),
	--tsserver = require("user.lsp.config.ts"),
	--rust_analyzer = require("user.lsp.config.rust"),
	--yamlls = require("user.lsp.config.yamlls"),
	--cmake = require("lsp.config.cmake"),
	clangd = require("user.lsp.config.clangd"),
}

for name, config in pairs(servers) do
	if config ~= nil and type(config) == "table" then
		-- 自定义初始化配置文件必须实现on_setup 方法
		config.on_setup(lspconfig[name])
	else
		-- 使用默认参数
		lspconfig[name].setup({})
	end
end
