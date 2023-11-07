-- A lot of this has been taken from the luasnip examples, see:
-- https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua#L190
local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
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
local function copy(args) return args[1] end

-- this adds a snippet to the shell filetype
ls.add_snippets("sh", {
    -- This is to create the file header for a shell script. It adds the shebang
    -- as well as asks for a description. Finally it sets the 
    s("dochead", {
        -- Executables must start with #!/bin/bash and a minimum number of flags
        t({"#!/bin/bash", "#", "# "}), i(1, "Description of script"),
        t({"", ""}),
        -- Use set to set shell options so that calling your script as bash script_name does not break its functionality
        t({"", "set -e"})
    }), s("docfnk", {
        -- simple static text
        t({"########################################", "# "}),
        i(1, "Description of function"), t({
            "", "#", "# Globals:", "#", "# Arguments:", "#", "# Returns:", "#",
            "# Outputs:", "########################################"
        })

    }), s("fnk", {
        -- simple static text
        -- remember ctl-k to jump to next
        t({"########################################", "# "}),
        i(1, "Description of function"), t({
            "", "#", "# Globals:", "#", "# Arguments:", "#", "# Returns:", "#",
            "# Outputs:", "########################################", ""
        }), i(2, "tmp"), t({"() {", "\t"}), i(3, "#"), t({"", "}"})
    })
})
