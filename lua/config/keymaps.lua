local keymap = vim.keymap

-- File Operations
-- keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open netrw (file explorer)" })

-- Editing
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" }) -- Note: may conflict with increment
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank/Copy to system clipboard" })
keymap.set({ "n", "v" }, "<leader>Y", [["+Y]], { desc = "Yank/Copy line to system clipboard" })

-- Split Windows
keymap.set("n", "<leader>ws", ":split<CR>", { desc = "Horizontal Split" })
keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Vertical Split" })

-- Navigation
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to lower window" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to right window" })

-- Move (swap)
keymap.set("n", "<leader>wH", "<C-w>H", { desc = "Move window to left" })
keymap.set("n", "<leader>wJ", "<C-w>J", { desc = "Move window to bottom" })
keymap.set("n", "<leader>wK", "<C-w>K", { desc = "Move window to top" })
keymap.set("n", "<leader>wL", "<C-w>L", { desc = "Move window to right" })

-- Dramatic Arrow Warnings
local messages = {
	"You can't rely on arrows forever...",
	"Master the blade... I mean, hjkl!",
	"The elders frown upon your weakness.",
	"Your training is incomplete, young one.",
	"Believe in the hjkl within you.",
	"With every step, you grow stronger — use hjkl.",
}

local function dramatic_warning()
	local msg = messages[math.random(#messages)]
	vim.api.nvim_echo({ { msg, "WarningMsg" } }, false, {})
end

keymap.set({ "n", "i", "v" }, "<Up>", dramatic_warning)
keymap.set({ "n", "i", "v" }, "<Down>", dramatic_warning)
keymap.set({ "n", "i", "v" }, "<Left>", dramatic_warning)
keymap.set({ "n", "i", "v" }, "<Right>", dramatic_warning)
