local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("def", {
    t("def "), i(1, "function_name"), t("("), i(2), t("):"),
    t({"", "    "}), i(3, "pass"),
  }),

  s("class", {
    t("class "), i(1, "ClassName"), t(":"), t({"", "    def __init__(self):", "        "}), i(2, "pass")
  }),

  s("ifmain", {
    t({'if __name__ == "__main__":', "    "}), i(1, "main()")
  }),
}

