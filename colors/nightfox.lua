
local color = {

    black = "#393b44",
  red     = "#c94f6d",
  green   = "#81b29a",
  yellow  = "#dbc074",
  blue    = "#719cd6",
  magenta = "#9d79d6",
  cyan    = "#63cdcf",
  white   = "#dfdfe0",
  orange  = "#f4a261",
  pink    = "#d67ad2",

  comment = "#738091",

  bg0     = "#131a24", -- Dark bg (status line and float)
  bg1     = "#192330", -- Default bg
  bg2     = "#212e3f", -- Lighter bg (colorcolm folds)
  bg3     = "#29394f", -- Lighter bg (cursor line)
  bg4     = "#39506d", -- Conceal, border fg

  fg0     = "#d6d6d7", -- Lighter fg
  fg1     = "#cdcecf", -- Default fg
  fg2     = "#aeafb0", -- Darker fg (status line)
  fg3     = "#71839b", -- Darker fg (line numbers, fold colums)

  sel0    = "#2b3b51", -- Popup bg, visual selection bg
  sel1    = "#3c5372", -- Popup sel bg, search bg
  }

vim.api.nvim_set_hl(0, "Normal", { fg = color.fg1, bg = color.bg1 })
vim.api.nvim_set_hl(0, "String", { fg = color.green, bg = nil })
vim.api.nvim_set_hl(0, "Comment", { fg = color.comment, italic = true })
vim.api.nvim_set_hl(0, "Statement", { fg = color.magenta, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant", { fg = color.orange, bg = nil, bold = false })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Function", { fg = color.blue, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
vim.api.nvim_set_hl(0, "Number", { fg = color.orange, bg = nil, italic = true })

vim.api.nvim_set_hl(0, "LineNr", { bg = nil, fg = color.fg3, bold = false })
vim.api.nvim_set_hl(0, "StatusLine", { fg = color.fg2, bg = color.bg3 })
vim.api.nvim_set_hl(0, "CursorLine", { fg = nil, bg = color.bg3 })
