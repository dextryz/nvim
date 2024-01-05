local color = {

    dark_blue = "#161821", -- Base Dark Blue
    medium_blue = "#1e2132", -- Dark Blue
    indigo = "#444b71",
    grey = "#818596",
    white = "#c6c8d1", -- Light Blue

    red = "#e27878",
    orange = "#e2a478",
    orange_dark = "#392313",
    green = "#b4be82",
    cyan = "#89b8c2",
    blue = "#84a0c6",
    purple = "#a093c7", -- Purple

    -- Out of pallete
    comment = "#6b7089",
    stateline_fg = "#818596",
    stateline_bg = "#17171b",
}


-- Code
vim.api.nvim_set_hl(0, "Normal", { fg = color.white, bg = color.dark_blue })

vim.api.nvim_set_hl(0, "Statement", { fg = color.blue, bold = false, italic = true })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })

vim.api.nvim_set_hl(0, "Constant", { fg = color.purple, bold = false })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "Float", { link = "Constant" })

vim.api.nvim_set_hl(0, "Identifier", { fg = color.cyan, italic = false })
vim.api.nvim_set_hl(0, "String", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Type", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Function", { fg = color.orange, bold = false })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })

vim.api.nvim_set_hl(0, "Special", { fg = color.green, italic = false, bold = false })
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Question", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })

vim.api.nvim_set_hl(0, "Comment", { fg = color.comment, italic = true })
vim.api.nvim_set_hl(0, "Search", { fg = color.orange_dark, bg = color.orange })

vim.api.nvim_set_hl(0, "MatchParen", { fg = color.cyan, bg = color.none, bold = true })
--vim.api.nvim_set_hl(0, "SpecialChar", { fg = color.green })
--vim.api.nvim_set_hl(0, "PreCondit", { fg = color.green })
--vim.api.nvim_set_hl(0, "Macro", { fg = color.blue })
--vim.api.nvim_set_hl(0, "Delimiter", { fg = color.medium_blue, bold = true })
--vim.api.nvim_set_hl(0, "SpecialComment", { fg = color.iceberg4 })
--vim.api.nvim_set_hl(0, "SpecialKey", { fg = color.blue })

-- Editor

vim.api.nvim_set_hl(0, "StatusLine", { bg = color.stateline_bg, fg = color.stateline_fg })

vim.api.nvim_set_hl(0, "Pmenu", { fg = color.grey, bg = color.medium_blue })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = color.white, bg = color.indigo })

vim.api.nvim_set_hl(0, "NonText", { fg = color.grey })
vim.api.nvim_set_hl(0, "VertSplit", { link = "NonText" })

vim.api.nvim_set_hl(0, "Visual", { bg = color.indigo })
vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.none, reverse = true })

vim.api.nvim_set_hl(0, "Cursor", { fg = color.grey, bg = color.medium_blue, reverse = true })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.medium_blue })

vim.api.nvim_set_hl(0, "MoreMsg", { link = "Special" })
vim.api.nvim_set_hl(0, "Directory", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Title", { fg = color.orange, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = color.iceberg2 })
vim.api.nvim_set_hl(0, "Substitute", { fg = color.iceberg0, bg = color.iceberg5 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = color.iceberg2, bg = color.iceberg0 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error", { fg = color.iceberg4 })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.green })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
