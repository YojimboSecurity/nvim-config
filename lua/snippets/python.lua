local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node
-- local l = require("luasnip.extras").lambda
-- local rep = require("luasnip.extras").rep
-- local p = require("luasnip.extras").partial
-- local m = require("luasnip.extras").match
-- local n = require("luasnip.extras").nonempty
-- local dl = require("luasnip.extras").dynamic_lambda
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local types = require("luasnip.util.types")
-- local conds = require("luasnip.extras.conditions")
-- local conds_expand = require("luasnip.extras.conditions.expand")

-- args is a table, where 1 is the text in Placeholder 1, 2 the text in
-- placeholder 2,...
local function copy(args)
	return args[1]
end

ls.add_snippets("python",{
    s("dochead",{
        t({"# -*- coding: utf-8 -*-","\"\"\""}),
        i(1,"Description of script"),
        t({"","","\"\"\"",""}),
    }),
    s("docfnk",{
        t({"\"\"\"",""}),
        i(1,"Description of function"),
        t({"","","\tArgs:",""}),
        i(2,"\t\targ1"),
        t({"","","\tReturns:",""}),
        i(3,"\t\treturn1"),
        t({"","\"\"\""}),
    }),
    -- s("fn", {
	-- 	t({ "", "def " }),
	-- 	-- Placeholder/Insert.
	-- 	i(1),
	-- 	t("("),
	-- 	-- Placeholder with initial text.
	-- 	i(2, "int foo"),
	-- 	-- Linebreak
	-- 	t({ ") {", "\t\"\"\"","\t" }),
    --     i(3,"Description of function"),
    --     t({"","","\tArgs:","\t\t"}),
    --     f(copy, 2),
    --     t({"","","\tReturns:","\t\t"}),
    --     i(4,"return1"),
    --     t({"","","\t\"\"\"","\t"}),
	-- 	i(0),
	-- 	t({ "", "}" }),
	-- }),
})
