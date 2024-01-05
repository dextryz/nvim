-- Color        CIE L*a*b*   HSB           sRGB      AppleRGB
-- ----------   ----------   -----------   -------   --------
-- bg_0         23 -12 -12   193  77  28   #103c48   #112e38
-- bg_1         28 -13 -13   193  72  34   #184956   #163945
-- bg_2         36 -13 -13   194  57  41   #2d5b69   #254a57
-- dim_0        56  -8  -6   191  20  56   #72898f   #61777c
-- fg_0         75  -5  -2   182   8  74   #adbcbc   #9faeae
-- fg_1         85  -5  -2   182   7  85   #cad8d9   #bfd0d0
-- 
-- red          60  63  40     2  68  98   #fa5750   #f13c3e
-- green        69 -38  55    92  70  73   #75b938   #69ad21
-- yellow       75   6  68    46  79  86   #dbb32d   #d1a416
-- blue         60   0 -57   213  72  97   #4695f7   #3a82f8
-- magenta      66  55 -15   325  52  95   #f275be   #e75bb3
-- cyan         73 -40  -4   174  67  78   #41c7b9   #42bdaa
-- orange       67  37  50    22  69  93   #ed8649   #e26f35
-- violet       64  30 -45   263  42  92   #af88eb   #9b72e9
-- 
-- br_red       66  63  40     3  65 100   #ff665c   #ff4b49
-- br_green     74 -38  55    92  65  78   #84c747   #78be2e
-- br_yellow    80   6  68    46  74  92   #ebc13d   #e4b424
-- br_blue      66   0 -57   214  66 100   #58a3ff   #4a91ff
-- br_magenta   72  55 -15   325  49 100   #ff84cd   #fb69c4
-- br_cyan      78 -40  -4   173  61  84   #53d6c7   #50cfba
-- br_orange    72  37  50    22  66  99   #fd9456   #f67e41
-- br_violet    69  30 -45   263  40  98   #bd96fa   #ab80fc

local color = {
    base03  = "#112e38",
    base02  = "#163945",
    base01  = "#254a57",
    base00  = "#657377",
    base0   = "#9faeae",
    base1   = "#bfd0d0",
    base2   = "#eee8d5",
--     yellow  = "#ac8300",
     orange  = "#e26f35",
--     red     = "#f13c3e",
     magenta = "#e75bb3",
     violet  = "#9b72e9",
     blue    = "#3a82f8",
    cyan    = "#42bdaa",
--     green   = "#69ad21",


    yellow  = "#ac8300",
--    orange  = "#cb4b16",
    red     = "#f23749",
--    magenta = "#dd459d",
--    violet  = "#7d80d1",
--    blue    = "#2b90d8",
--    cyan    = "#259d94",
    green   = "#819500",
}

-- Syntax

vim.api.nvim_set_hl(0, "Normal",      { fg = color.base0, bg = color.base03 })
vim.api.nvim_set_hl(0, "Comment",     { fg = color.base01, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "MatchParen",  { fg = color.base1, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Statement",   { fg = color.green, bg = nil, italic = false })
--vim.api.nvim_set_hl(0, "Keyword",     { fg = color.green, bg = nil })
-- I like the yellow more for functions, since it makes it clearer than the green
--vim.api.nvim_set_hl(0, "Keyword",     { fg = color.yellow, bg = nil })
vim.api.nvim_set_hl(0, "Keyword",     { fg = color.yellow, bg = nil })
--vim.api.nvim_set_hl(0, "Conditional", { fg = color.violet, bg = nil })
-- Using less bright green insdie the brither function yellow.
vim.api.nvim_set_hl(0, "Conditional", { fg = color.violet, bg = nil })
vim.api.nvim_set_hl(0, "Repeat",      { fg = color.violet, bg = nil })
vim.api.nvim_set_hl(0, "Structure",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception",   { link = "Statement" })
vim.api.nvim_set_hl(0, "Define",      { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant",    { fg = color.magenta, bg = nil, bold = false })
vim.api.nvim_set_hl(0, "Boolean",     { link = "Constant" })
vim.api.nvim_set_hl(0, "Character",   { link = "Constant" })
vim.api.nvim_set_hl(0, "Number",      { fg = color.cyan, bg = nil })
vim.api.nvim_set_hl(0, "Float",       { link = "Number" })
vim.api.nvim_set_hl(0, "String",  { fg = color.cyan, bg = nil, italic = false })
vim.api.nvim_set_hl(0, "Identifier",  { fg = color.green, bg = nil, italic = false })
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
