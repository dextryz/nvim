local color = {
    nord00 = "#2E3440",
    nord01 = "#3B4252",
    nord02 = "#434C5E",
    nord03 = "#616E88", -- Out of pallette
    nord04 = "#D8DEE9",
    nord05 = "#E5E9F0",
    nord06 = "#ECEFF4",
    nord07 = "#8FBCBB",
    nord08 = "#88C0D0",
    nord09 = "#81A1C1",
    nord10 = "#5E81AC",
    nord11 = "#BF616A",
    nord12 = "#D08770",
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C",
    nord15 = "#B48EAD",
    nord16 = "#ABB2BF", -- Out of palette
}

-- Code
vim.api.nvim_set_hl(0, "Type",           { fg = color.nord09 })
vim.api.nvim_set_hl(0, "Typedef",        { link = "Type" })
vim.api.nvim_set_hl(0, "Statement",      { link = "Type" })
vim.api.nvim_set_hl(0, "Structure",      { link = "Type" })
vim.api.nvim_set_hl(0, "StorageClass",   { link = "Type" })
vim.api.nvim_set_hl(0, "Boolean",        { link = "Type" })
vim.api.nvim_set_hl(0, "Normal",         { fg = color.nord16, bg = color.nord00 })
vim.api.nvim_set_hl(0, "Constant",       { fg = color.nord07 })
vim.api.nvim_set_hl(0, "Special",        { fg = color.nord16, bold = true })
vim.api.nvim_set_hl(0, "Float",          { fg = color.nord15 })
vim.api.nvim_set_hl(0, "String",         { fg = color.nord14 })
vim.api.nvim_set_hl(0, "Number",         { fg = color.nord15, italic = true })
vim.api.nvim_set_hl(0, "Identifier",     { fg = color.nord09, italic = true })
vim.api.nvim_set_hl(0, "Function",       { fg = color.nord08, italic = true })
vim.api.nvim_set_hl(0, "Keyword",        { fg = color.nord09, bold = false })
vim.api.nvim_set_hl(0, "Conditional",    { link = "Keyword" })
vim.api.nvim_set_hl(0, "Label",          { link = "Keyword" })
vim.api.nvim_set_hl(0, "PreProc",        { link = "Keyword" })
vim.api.nvim_set_hl(0, "Include",        { link = "PreProc" })
vim.api.nvim_set_hl(0, "Define",         { link = "PreProc" })
vim.api.nvim_set_hl(0, "Repeat",         { fg = color.nord09 })
vim.api.nvim_set_hl(0, "Operator",       { fg = color.nord09 })
vim.api.nvim_set_hl(0, "SpecialKey",     { fg = color.nord09 })
vim.api.nvim_set_hl(0, "Identifier",     { fg = color.nord09, italic = true })
vim.api.nvim_set_hl(0, "SpecialChar",    { fg = color.nord13 })
vim.api.nvim_set_hl(0, "PreCondit",      { fg = color.nord13 })
vim.api.nvim_set_hl(0, "Character",      { fg = color.nord14 })
vim.api.nvim_set_hl(0, "Delimiter",      { fg = color.nord16 })
vim.api.nvim_set_hl(0, "Comment",        { fg = color.nord03, italic = true })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = color.nord08 })
vim.api.nvim_set_hl(0, "MatchParen",     { fg = color.nord15, bold = true })
vim.api.nvim_set_hl(0, "Todo",           { fg = color.nord13 })
vim.api.nvim_set_hl(0, "Search",         { fg = color.nord06, bg = color.nord10 })

-- Editor
vim.api.nvim_set_hl(0, "StatusLine",   { bg = color.nord02, fg = color.nord04 })
vim.api.nvim_set_hl(0, "Title",        { fg = color.nord14, bold = true })
vim.api.nvim_set_hl(0, "Cursor",       { fg = color.nord04 })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = color.nord01 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.nord15, bold = true })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.nord03 })
vim.api.nvim_set_hl(0, "Visual",       { bg = color.nord02 })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = color.nord04, bg = color.nord02 })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.nord04, bg = color.nord10 })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.nord04, bg = color.nord00 })
vim.api.nvim_set_hl(0, "LineNr",       { fg = color.nord03 })
vim.api.nvim_set_hl(0, "Error",           { fg = color.nord11 })
vim.api.nvim_set_hl(0, "ErrorMsg",        { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings",        { fg = color.nord13 })
vim.api.nvim_set_hl(0, "WarningMsg",      { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { link = "Warnings" })

-- Filetype
vim.api.nvim_set_hl(0, "shDerefSimple",             { fg = color.nord16, bold = true })
vim.api.nvim_set_hl(0, "ledgerTransactionDate",     { fg = color.nord16 })
vim.api.nvim_set_hl(0, "ledgerTransactionMetadata", { fg = color.nord03 })
vim.api.nvim_set_hl(0, "markdownCode",              { fg = color.nord07 })
vim.api.nvim_set_hl(0, "markdownItalic",            { fg = color.nord09, italic = true })
vim.api.nvim_set_hl(0, "markdownBlockquote",        { fg = color.nord15, bold = true })
vim.api.nvim_set_hl(0, "markdownLinkText",        { fg = color.blue })
vim.api.nvim_set_hl(0, "markdownUrlTitle",        { fg = color.blue })
--vim.api.nvim_set_hl(0, "markdownH3",        { fg = color.nord10, bold = true })
--vim.api.nvim_set_hl(0, "markdownH4",        { fg = color.nord07, bold = true })
