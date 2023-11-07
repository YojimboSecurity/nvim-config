local ls = require("luasnip")
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets"})
-- shortcut to source luasnips file
vim.keymap.set("n", "<leader><leader>s",
               "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

-- List of all snippets
vim.keymap.set("i", "<C-l>",
               function() if ls.choice_active() then ls.change_choice() end end)

-- Expand or jump
vim.keymap.set({"i", "s"}, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
        -- return vim.keymap.t("<Plug>luasnip-expand-or-jump")
    end
end)

-- Jump backward
vim.keymap.set({"i", "s"}, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
        -- return vim.keymap.t("<Plug>luasnip-jump-prev")
    end
end)

