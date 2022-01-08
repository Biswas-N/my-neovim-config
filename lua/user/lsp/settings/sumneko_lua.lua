local sumneko_root_path = vim.fn.expand(vim.fn.stdpath("data") .. "/lsp_servers/sumneko_lua/extension/server/bin")
local sumneko_binary = vim.fn.expand(sumneko_root_path .. "/lua-language-server.exe")

return {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
