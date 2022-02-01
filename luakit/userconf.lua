local settings = require "settings"
local modes = require "modes"

modes.add_binds("normal", {
    { "<Control-c>", "Copy selected text.", function ()
        luakit.selection.clipboard = luakit.selection.primary
    end},
})

local engines = settings.window.search_engines
engines.ddg          = "https://duckduckgo.com/?q=%s"
engines.ggl          = "https://google.com/search?q=%s"
engines.aur          = "https://aur.archlinux.org/packages.php?O=0&K=%s&do_Search=Go"
engines.aw           = "https://wiki.archlinux.org/index.php/Special:Search?fulltext=Search&search=%s"
engines.wi    = function (arg)
    local l, s = arg:match("^(%a%a):%s*(.+)")
    if l then
        return "https://" .. l .. ".wikipedia.org/wiki/Special:Search?search=" .. s
    else
        return "https://en.wikipedia.org/wiki/Special:Search?search=" .. arg
    end
end
engines.default      = engines.ddg
