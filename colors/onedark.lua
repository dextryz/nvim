local color = {
    dark = "#21252B",
    black        = "#282c34",
    visual_grey  = "#323842",
    grey         = "#5b7279",
    white        = "#abb2bf",
    red          = "#E06C75",
    green        = "#98C379",
    yellow       = "#E5C07B",
    blue         = "#61AFEF",
    magenta      = "#C678DD",
    cyan         = "#56B6C2",
    gutter_grey  = "#4b5263",
    comment_grey = "#5c6370",
}

-- Syntax

vim.api.nvim_set_hl(0, "Normal",      { fg = color.white, bg = color.black })
vim.api.nvim_set_hl(0, "Comment",     { fg = color.comment_grey, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "MatchParen",  { fg = color.yellow, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Statement",   { fg = color.magenta, bg = nil })
vim.api.nvim_set_hl(0, "Keyword",     { fg = color.blue, bg = nil })
vim.api.nvim_set_hl(0, "Conditional", { fg = color.magenta, bg = nil })
vim.api.nvim_set_hl(0, "Repeat",      { fg = color.magenta, bg = nil })
vim.api.nvim_set_hl(0, "Constant",    { fg = color.cyan, bg = nil })
vim.api.nvim_set_hl(0, "Number",      { fg = color.yellow, bg = nil })
vim.api.nvim_set_hl(0, "String",      { fg = color.green, bg = nil })
vim.api.nvim_set_hl(0, "Identifier",  { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "Type",        { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "Function",    { fg = color.blue, bg = nil })
vim.api.nvim_set_hl(0, "Operator",    { fg = color.yellow, bg = nil })
vim.api.nvim_set_hl(0, "Special",     { fg = color.blue, bg = nil})
vim.api.nvim_set_hl(0, "Todo",        { fg = color.red, bg = nil})
vim.api.nvim_set_hl(0, "Include",     { fg = color.blue, bg = nil})

vim.api.nvim_set_hl(0, "Structure",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Define",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Boolean",     { link = "Constant" })
vim.api.nvim_set_hl(0, "Character",   { link = "Constant" })
vim.api.nvim_set_hl(0, "Float",       { link = "Number" })
vim.api.nvim_set_hl(0, "Typedef",     { link = "Identifier" })
vim.api.nvim_set_hl(0, "Include",     { link = "Function" })
vim.api.nvim_set_hl(0, "PreProc",     { link = "Special" })
vim.api.nvim_set_hl(0, "Question",    { link = "Special" })
vim.api.nvim_set_hl(0, "Label",       { link = "Special" })

-- Filetype

vim.api.nvim_set_hl(0, "cssClassname",     { fg = color.magenta })
vim.api.nvim_set_hl(0, "cssClassnameDot",  { fg = color.magenta })
vim.api.nvim_set_hl(0, "cssTagName",       { fg = color.magenta })
vim.api.nvim_set_hl(0, "shDerefSimple",    { fg = color.base0,  bold = true })
vim.api.nvim_set_hl(0, "ledgerAccount",    { fg = color.white })
vim.api.nvim_set_hl(0, "ledgerAmount",     { fg = color.yellow })
vim.api.nvim_set_hl(0, "htmlTag",   { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "htmlTagName",   { fg = color.magenta, bg = nil })
vim.api.nvim_set_hl(0, "markdownItalic",   { fg = color.red, bg = nil })
--vim.api.nvim_set_hl(0, "markdownLinkText", { fg = color.cyan })
--vim.api.nvim_set_hl(0, "markdownBold",     { fg = color.white,  bold = true })
--vim.api.nvim_set_hl(0, "markdownUrl",      { fg = color.white, bold = false })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = color.white,  bold = true })
vim.api.nvim_set_hl(0, "markdownCode",             { fg = color.cyan })
vim.api.nvim_set_hl(0, "markdownBlockquote",       { fg = color.cyan, bold = true })

-- Editor

vim.api.nvim_set_hl(0, "Search",       { fg = nil, bg = color.base00 })
vim.api.nvim_set_hl(0, "LineNr",       { bg = nil, fg = color.gutter_grey })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color.black, fg = color.white, bold = true })
vim.api.nvim_set_hl(0, "StatusLine",   { bg = color.visual_grey, fg = color.white })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.comment_grey })
vim.api.nvim_set_hl(0, "VertSplit",    { link = "NonText" })
vim.api.nvim_set_hl(0, "Title",        { fg = color.white, bold = true })
vim.api.nvim_set_hl(0, "Visual",       { fg = nil, bg = color.gutter_grey })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = color.visual_grey })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.white, bg = nil })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = color.white, bg = color.dark, bold = false })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.white, bg = color.black, bold = true })

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
