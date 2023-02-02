vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- This lets you move the highlited area up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Takes line below cursor and appnds to current line with a space
vim.keymap.set("n", "J", "mzJ`z")

-- This sets ctrl-d and ctrl-u to half page jumping and keeps the cursor in the
-- middle of the page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- This sets search terms to the middle of the page.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- This allows you to paste and not lose the content in the buffer.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- This allows you copy to the clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- This delets to void in normal mode or visual mode
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This maps ctrl-c to Esc. This is nice when we connent out a block of code.
-- We can just use the normal ctrl-c rather than having to remembered to use
-- Esc
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- This lets you switch projects. However, I do not use tmux. Might consider
-- removing this if not going to use.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- This uses LSP to format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- This is quick fix navigation. Not sure what this is doing or what it is for.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- This lets you replace the word you are on.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- This turns the file you are working on into an executable file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
