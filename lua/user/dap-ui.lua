local M = {}
M.config = function()
	require("dapui").setup({
		sidebar = {
			-- You can change the order of elements in the sidebar
			elements = {
				-- Provide as ID strings or tables with "id" and "size" keys
				{
					id = "scopes",
					size = 0.5, -- Can be float or integer > 1
				},
				{ id = "breakpoints", size = 0.25 },
				{ id = "stacks", size = 0.25 },
			},
			tray = {
				enable = false,
			},
		},
	})
end
return M
