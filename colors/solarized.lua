local color = {
    base03  = "#002d38",
    base02  = "#093946",
    base01  = "#5b7279",
    base00  = "#657377",
    base0   = "#839496",
    base1   = "#93a1a1",
    base2   = "#eee8d5",
    yellow  = "#ac8300",
    orange  = "#cb4b16",
    red     = "#f23749",
    magenta = "#dd459d",
    violet  = "#7d80d1",
    blue    = "#2b90d8",
    cyan    = "#259d94",
    green   = "#819500",
}

-- Syntax

vim.api.nvim_set_hl(0, "Normal",      { fg = color.base0, bg = color.base03 })
vim.api.nvim_set_hl(0, "Comment",     { fg = color.base01, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "MatchParen",  { fg = color.base1, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Statement",   { fg = color.green, bg = nil, italic = false })
--vim.api.nvim_set_hl(0, "Keyword",     { fg = color.green, bg = nil })
-- I like the yellow more for functions, since it makes it clearer than the green
vim.api.nvim_set_hl(0, "Keyword",     { fg = color.yellow, bg = nil })
--vim.api.nvim_set_hl(0, "Conditional", { fg = color.violet, bg = nil })
-- Using less bright green insdie the brither function yellow.
vim.api.nvim_set_hl(0, "Conditional", { fg = color.green, bg = nil })
--vim.api.nvim_set_hl(0, "Repeat",      { fg = color.violet, bg = nil })
vim.api.nvim_set_hl(0, "Repeat",      { fg = color.green, bg = nil })
vim.api.nvim_set_hl(0, "Structure",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Define",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant",    { fg = color.base0, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Boolean",     { link = "Constant" })
vim.api.nvim_set_hl(0, "Character",   { link = "Constant" })
vim.api.nvim_set_hl(0, "Number",      { fg = color.cyan, bg = nil })
vim.api.nvim_set_hl(0, "Float",       { link = "Number" })
vim.api.nvim_set_hl(0, "String",  { fg = color.cyan, bg = nil, italic = false })
vim.api.nvim_set_hl(0, "Identifier",  { fg = color.blue, bg = nil, italic = false })
--vim.api.nvim_set_hl(0, "String",      { link = "Identifier" })
vim.api.nvim_set_hl(0, "Type",        { link = "Identifier" })
vim.api.nvim_set_hl(0, "Typedef",     { link = "Identifier" })
vim.api.nvim_set_hl(0, "Function",    { fg = color.blue, bg = nil, italic = false })
vim.api.nvim_set_hl(0, "Include",     { link = "Function" })
vim.api.nvim_set_hl(0, "Operator",    { fg = color.base00, bg = nil, bold = false })
vim.api.nvim_set_hl(0, "Special",     { fg = color.green, bg = nil})
vim.api.nvim_set_hl(0, "PreProc",     { link = "Special" })
vim.api.nvim_set_hl(0, "Question",    { link = "Special" })
vim.api.nvim_set_hl(0, "Label",       { link = "Special" })
vim.api.nvim_set_hl(0, "Todo",     { fg = color.magenta, bg = nil})

-- Filetype

vim.api.nvim_set_hl(0, "shDerefSimple",    { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "ledgerPreDeclaration",    { fg = color.violet, bold = false })
vim.api.nvim_set_hl(0, "ledgerPosting",    { fg = color.violet, bold = false })
vim.api.nvim_set_hl(0, "ledgerAccount",    { fg = color.cyan })
vim.api.nvim_set_hl(0, "ledgerAmount",     { fg = color.yellow, bold = false })
vim.api.nvim_set_hl(0, "markdownBold",     { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "markdownItalic",   { fg = color.violet, italic = true })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = color.cyan,   bold = false })
vim.api.nvim_set_hl(0, "markdownUrl",      { fg = color.base00, bold = false })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "markdownCode",             { fg = color.cyan })
vim.api.nvim_set_hl(0, "markdownBlockquote",       { fg = color.cyan, bold = true })

-- Editor

vim.api.nvim_set_hl(0, "Search",       { fg = nil, bg = color.base00 })
vim.api.nvim_set_hl(0, "LineNr",       { bg = color.base02, fg = color.base00, bold = false })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color.base02, fg = color.base00, bold = true })
vim.api.nvim_set_hl(0, "StatusLine",   { bg = color.base00, fg = color.base03, bold = false })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = color.base00, bg = color.base02, bold = false })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.base03, bg = color.base01, bold = true })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.base01 })
vim.api.nvim_set_hl(0, "VertSplit",    { link = "NonText" })
vim.api.nvim_set_hl(0, "Title",        { fg = color.base0, bold = true })
vim.api.nvim_set_hl(0, "Visual",       { fg = color.base03, bg = color.base01, bold = false })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.base00, bg = color.base03 })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = color.base03 })

-- Diagnostics

vim.api.nvim_set_hl(0, "Error",           { fg = color.red })
vim.api.nvim_set_hl(0, "ErrorMsg",        { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings",        { fg = color.yellow })
vim.api.nvim_set_hl(0, "WarningMsg",      { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = color.base01, bg = nil })

--vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
--vim.api.nvim_set_hl(0, "Statement", { fg = color.green, bold = false, italic = false })
--vim.api.nvim_set_hl(0, "Constant", { fg = color.yellow, bold = false })
--vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })
--vim.api.nvim_set_hl(0, "Cursor", { fg = color.base1, bg = color.green })
