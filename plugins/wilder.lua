return {
    "gelguy/wilder.nvim",
    config = function()
        local wilder = require("wilder")

        -- local popupmenu = wilder.popupmenu_border_theme({
        --     highlights = {
        --         border = "Normal" -- highlight to use for the border
        --     },
        --     -- 'single', 'double', 'rounded' or 'solid'
        --     -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        --     border = "rounded",
        --     max_height = "35%",
        --     left = {" ", wilder.popupmenu_devicons()}
        -- })

        local popupmenu = wilder.wildmenu_airline_theme({
            -- highlights can be overriden, see :h wilder#wildmenu_renderer()
            highlights = {default = "StatusLine"},
            highlighter = wilder.basic_highlighter(),
            separator = " · "
        })

        wilder.set_option("renderer", wilder.wildmenu_renderer(popupmenu))

        wilder.setup({modes = {":", "/", "?"}})
    end,
    lazy = false,
    dependencies = {"kyazdani42/nvim-web-devicons"}
}
