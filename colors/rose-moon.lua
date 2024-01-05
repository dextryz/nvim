local color = {
    base    = "#232136",
    surface = "#2a273f",
    overlay = "#393552",
    muted   = "#6e6a86",
    subtle  = "#908caa",
    --text    = "#e0def4", // original
    text    = "#f2e9e1",
    love    = "#eb6f92",
    gold    = "#f6c177",
    rose    = "#ea9a97",
    pine    = "#3e8fb0",
    foam    = "#9ccfd8",
    iris    = "#c4a7e7",
    highlight_low  = "#2a283e",
    highlight_med  = "#44415a",
    highlight_high = "#56526e",
}

vim.api.nvim_set_hl(0, "Normal", { fg = color.text, bg = color.base })
vim.api.nvim_set_hl(0, "Comment", { fg = color.muted, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Statement", { fg = color.pine, bg = nil })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Structure", { link = "Statement" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Statement" })
vim.api.nvim_set_hl(0, "Keyword", { link = "Statement" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant", { fg = color.rose, bg = nil })
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Number", { fg = color.rose, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "String", { fg = color.gold, bg = nil })
vim.api.nvim_set_hl(0, "Type", { fg = color.foam })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "Function", { fg = color.rose, bg = nil })
vim.api.nvim_set_hl(0, "Identifier", { link = "Function" })
vim.api.nvim_set_hl(0, "Include", { link = "Function" })
vim.api.nvim_set_hl(0, "Operator", { link = "Function" })
vim.api.nvim_set_hl(0, "Title", { link = "Function" })
vim.api.nvim_set_hl(0, "Special", { fg = color.rose, bg = nil})
vim.api.nvim_set_hl(0, "PreProc", { link = "Special" })
vim.api.nvim_set_hl(0, "Label", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { fg = color.love, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Search", { fg = text, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { fg = color.iris, bg = nil, bold = true })

-- Editor

vim.api.nvim_set_hl(0, "LineNr", { bg = color.base, fg = color.subtle, bold = false })
vim.api.nvim_set_hl(0, "StatusLine", { bg = color.highlight_med, fg = nil })
vim.api.nvim_set_hl(0, "CursorLine", { bg = color.highlight_low, bg = nil })
vim.api.nvim_set_hl(0, "Visual", { bg = color.highlight_med, fg = nil })
vim.api.nvim_set_hl(0, "NonText", { fg = color.muted, bg = nil})
vim.api.nvim_set_hl(0, "Pmenu", { bg = color.overlay, fg = nil })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = color.overlay, fg = nil, bold = true })
vim.api.nvim_set_hl(0, "SignColumn", { fg = nil, bg = nil })
vim.api.nvim_set_hl(0, "Cursor", { fg = nil, bg = color.overlay })
vim.api.nvim_set_hl(0, "Error", { fg = color.love, bg = nil})
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "DiagnosticError", { link = "Error" })
vim.api.nvim_set_hl(0, "Warnings", { fg = color.gold, bg = nil })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warnings" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { link = "Warnings" })
--vim.api.nvim_set_hl(0, "CursorLineNr", { fg = color.rose, bg = nil, bold = true })
--vim.api.nvim_set_hl(0, "VertSplit", { fg = color.base02 })
--vim.api.nvim_set_hl(0, "VisualMode", { fg = color.blue, bg = color.base03, reverse = true })
vim.api.nvim_set_hl(0, "markdownCode",              { fg = color.iris })
