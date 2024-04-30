local color = {
    black     = "#222222",
    medium_gray     = "#767676",
--    white     = "#F5EEE6",
    white     = "#E5E9F0",
    light_black     = "#424242",
    lighter_black     = "#545454",
    subtle_black     = "#303030",
    light_gray     = "#999999",
    lighter_gray     = "#CCCCCC",
    lightest_gray     = "#E5E5E5",
    yellow     = "#FED442",
    pink     = "#D73A49",
    green     = "#22863A",
    red     = "#B31D28",
    orange     = "#E36209",
    blue     = "#005CC5",
}

-- Code
vim.api.nvim_set_hl(0, "Normal",       { fg = color.white, bg = color.black })
vim.api.nvim_set_hl(0, "Comment",      { fg = color.lighter_black, bg = nil })

vim.api.nvim_set_hl(0, "Constant",     { fg = color.medium_gray, bg = nil, bold = false })
vim.api.nvim_set_hl(0, "Character",    { link = "Constant" })
vim.api.nvim_set_hl(0, "Number",    { link = "Constant" })
vim.api.nvim_set_hl(0, "Boolean",      { link = "Constant" })
vim.api.nvim_set_hl(0, "Float",        { link = "Constant" })
vim.api.nvim_set_hl(0, "String",        { link = "Constant" })

vim.api.nvim_set_hl(0, "Identifier",   { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "Function",   { fg = color.white, bg = nil })

vim.api.nvim_set_hl(0, "Statement",    { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "Conditional",  { link = "Statement" })
vim.api.nvim_set_hl(0, "Repeat",       { link = "Statement" })
vim.api.nvim_set_hl(0, "Label",        { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception",    { link = "Statement" })

vim.api.nvim_set_hl(0, "Operator",        { fg = color.lighter_gray, bg = nil })

vim.api.nvim_set_hl(0, "PreProc",        { fg = color.medium_gray, bg = nil })
vim.api.nvim_set_hl(0, "Include",      { link = "PreProc" })
vim.api.nvim_set_hl(0, "Define",       { link = "PreProc" })
vim.api.nvim_set_hl(0, "Macro",       { link = "PreProc" })
vim.api.nvim_set_hl(0, "PreCont",       { link = "PreProc" })

vim.api.nvim_set_hl(0, "Type",        { fg = color.lighter_gray, bold = true })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Type" })
vim.api.nvim_set_hl(0, "Structure",    { link = "Type" })
vim.api.nvim_set_hl(0, "Typedef",      { link = "Type" })

vim.api.nvim_set_hl(0, "Special",      { fg = color.medium_gray, bg = nil})
vim.api.nvim_set_hl(0, "SpecialChar",      { link = "Special" })
vim.api.nvim_set_hl(0, "Tag",      { link = "Special" })
vim.api.nvim_set_hl(0, "Delimiter",      { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialComment",      { link = "Special" })
vim.api.nvim_set_hl(0, "Debug",      { link = "Special" })






vim.api.nvim_set_hl(0, "Title",        { fg = color.crystalBlue, bold = true })
vim.api.nvim_set_hl(0, "Todo",         { fg = color.pink, bg = nil })
vim.api.nvim_set_hl(0, "Search",       { fg = color.waveBlue2, reverse = true })
vim.api.nvim_set_hl(0, "MatchParen",   { fg = color.springViolet2, bg = nil, bold = true })

-- Editor
vim.api.nvim_set_hl(0, "LineNr",       { fg = color.lighter_black, bg = nil })
vim.api.nvim_set_hl(0, "SpecialKey",   { fg = color.springBlue, bg = nil })
vim.api.nvim_set_hl(0, "StatusLine",   { fg = nil, bg = color.subtle_black })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = nil, bg = color.waveBlue1 })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = nil, bg = color.waveBlue1, bold = true })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.sumiInk4, bg = nil})
vim.api.nvim_set_hl(0, "Visual",       { fg = color.lighter_black, bg = color.subtle_black })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.green , bg = nil })
vim.api.nvim_set_hl(0, "CursorLine",   { fg = nil, bg = color.sumiInk3 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.fujiWhite, bg = nil })
vim.api.nvim_set_hl(0, "Folded",       { fg = nil, bg = color.sumiInk4 })

-- Diagnostics
vim.api.nvim_set_hl(0, "Error",           { fg = color.white, bg = color.red})
vim.api.nvim_set_hl(0, "ErrorMsg",        { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings",        { fg = color.yellow, bg = nil })
vim.api.nvim_set_hl(0, "WarningMsg",      { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { link = "Warnings" })

-- Markdown
vim.api.nvim_set_hl(0, "markdownCode", { fg = color.waveAqua1 })
