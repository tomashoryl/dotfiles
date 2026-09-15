-- Enhanced objects in key bindings (`diq` instead of `di"`, etc.)
require("mini.ai").setup({})

require("mini.pairs").setup({})

require("mini.surround").setup({
  mappings = {
    add = "Sa",
    delete = "Sd",
    find = "Sf",
    find_left = "SF",
    highlight = "Sh",
    replace = "Sr",
  }
})

require("mini.icons").setup({})
MiniIcons.mock_nvim_web_devicons()
