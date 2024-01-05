local color = {
    bg = "#02091F",
	text  = "#abb2bf",
    darkblue = "#182A5A",
    lightblue = "#0F1F4A",
    red = "#E2545D",
    yellow = "#F8D27B",
    pink = "#F1AEDB",
    cyan = "#8AEAFA",
    purple = "#9370DB",
    green        = "#98C379",
    plum = "#DDA0DD",
    orange = "#EEA28C"
}

-- Constants

vim.api.nvim_set_hl(0, "Normal", { bg = color.bg, fg = color.text })
vim.api.nvim_set_hl(0, "Keyword", { fg = color.cyan, bg = nil })
vim.api.nvim_set_hl(0, "Statement", { link = "Keyword" })
vim.api.nvim_set_hl(0, "String", { bg = nil, fg = color.plum })
vim.api.nvim_set_hl(0, "Comment", { bg = nil, fg = color.lightblue })
vim.api.nvim_set_hl(0, "Constant", { bg = nil, fg = color.orange })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" }) --  if, then, else, endif, switch, etc.
vim.api.nvim_set_hl(0, "Operator", { fg = color.sky, bold = false })
vim.api.nvim_set_hl(0, "Function", { fg = color.blue, bg = nil })

vim.api.nvim_set_hl(0, "Todo", { fg = color.red, bg = color.none })
vim.api.nvim_set_hl(0, "MatchParen", { bg = nil, fg = color.pink, bold = true })
vim.api.nvim_set_hl(0, "Repeat", { fg = color.yellow, bg = nil }) -- for, do, while, etc.
vim.api.nvim_set_hl(0, "Structure", { fg = color.yellow, bg = nil }) -- struct, union, enum, etc.
vim.api.nvim_set_hl(0, "StorageClass", { fg = color.yellow, bg = nil }) -- static, register, volatile, etc.
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" }) --  if, then, else, endif, switch, etc.
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })

vim.api.nvim_set_hl(0, "Special",     { fg = color.pink, bg = nil})
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { fg = color.teal, bg = nil })
vim.api.nvim_set_hl(0, "Label", { fg = color.sapphire, bg = nil }) -- case, default, etc.

vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "Identifier", { fg = color.flamingo, italic = false })
--vim.api.nvim_set_hl(0, "String", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Type", { fg = color.yellow, bg = nil }) -- (preferred) int, long, char, etc.
vim.api.nvim_set_hl(0, "Typedef", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })

vim.api.nvim_set_hl(0, "Search",       { fg = color.text, bg = color.sky })
vim.api.nvim_set_hl(0, "LineNr",       { bg = color.base, fg = color.surface1, bold = false })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color.base, fg = color.lavender, bold = true })
vim.api.nvim_set_hl(0, "StatusLine",   { bg = nil, fg = color.text, bold = false })
vim.api.nvim_set_hl(0, "Pmenu",        { fg = color.overlay2, bg = nil, bold = false })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.text, bg = color.surface1, bold = true })
vim.api.nvim_set_hl(0, "NonText",      { fg = color.overlay0, bg = nil})
vim.api.nvim_set_hl(0, "VertSplit",    { link = "NonText" })
vim.api.nvim_set_hl(0, "Title",        { fg = color.blue, bold = true })
vim.api.nvim_set_hl(0, "Visual",       { fg = nil, bg = color.surface1, bold = false })
vim.api.nvim_set_hl(0, "SignColumn",   { fg = color.surface1, bg = nil })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = color.surface0 })
vim.api.nvim_set_hl(0, "Cursor",   { bg = color.rosewater })

vim.api.nvim_set_hl(0, "Error",           { fg = color.red })
vim.api.nvim_set_hl(0, "ErrorMsg",        { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings",        { fg = color.yellow })
vim.api.nvim_set_hl(0, "WarningMsg",      { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = color.text, bg = nil })
