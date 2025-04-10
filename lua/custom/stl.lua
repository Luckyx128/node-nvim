local colors = require("base46").get_theme_tb("base_30")

vim.api.nvim_set_hl(0, "StMode", { fg = colors.black, bg = colors.blue, bold = true })

return function()
  local mode = "%#StMode#  %v:lua.require('nvchad.stl.utils').mode() "
  local file = " %f %m %r "
  local right = "%=%#StMode#" .. " %l:%c "

  return mode .. file .. right
end

