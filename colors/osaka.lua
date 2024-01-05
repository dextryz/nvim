--- Converts an HSL color value to RGB. Conversion formula
--- adapted from http://en.wikipedia.org/wiki/HSL_color_space.
--- Assumes h, s, and l are contained in the set [0, 1] and
--- returns r, g, and b in the set [0, 255].
---
--- @param h number      The hue
--- @param s number      The saturation
--- @param l number      The lightness
--- @return number, number, number     # The RGB representation
function hslToRgb(h, s, l)
  --- @type number, number, number
  local r, g, b

  if s == 0 then
    r, g, b = l, l, l -- achromatic
  else
    --- @param p number
    --- @param q number
    --- @param t number
    local function hue2rgb(p, q, t)
      if t < 0 then
        t = t + 1
      end
      if t > 1 then
        t = t - 1
      end
      if t < 1 / 6 then
        return p + (q - p) * 6 * t
      end
      if t < 1 / 2 then
        return q
      end
      if t < 2 / 3 then
        return p + (q - p) * (2 / 3 - t) * 6
      end
      return p
    end

    --- @type number
    local q
    if l < 0.5 then
      q = l * (1 + s)
    else
      q = l + s - l * s
    end
    local p = 2 * l - q

    r = hue2rgb(p, q, h + 1 / 3)
    g = hue2rgb(p, q, h)
    b = hue2rgb(p, q, h - 1 / 3)
  end

  return r * 255, g * 255, b * 255
end

--- Converts an HSL color value to RGB in Hex representation.
--- @param  h number   The hue
--- @param  s number   The saturation
--- @param  l number   The lightness
--- @return   string   # The hex representation
function hslToHex(h, s, l)
  local r, g, b = hslToRgb(h / 360, s / 100, l / 100)

  return string.format("#%02x%02x%02x", r, g, b)
end

local hsl = hslToHex

local color = {
    base04 = hsl(192, 100, 5),
    base03 = hsl(192, 100, 11),
    base02 = hsl(192, 81, 14),
    base01 = hsl(194, 14, 40),
    base00 = hsl(196, 13, 45),
    -- base0 = hsl( 186, 8, 55 ),
    base0 = hsl(186, 8, 65),
    -- base1 = hsl( 180, 7, 60 ),
    base1 = hsl(180, 7, 70),
    base2 = hsl(46, 42, 88),
    base3 = hsl(44, 87, 94),
    base4 = hsl(0, 0, 100),
    yellow = hsl(45, 100, 35),
    yellow100 = hsl(47, 100, 80),
    yellow300 = hsl(45, 100, 50),
    yellow500 = hsl(45, 100, 35),
    yellow700 = hsl(45, 100, 20),
    yellow900 = hsl(46, 100, 10),
    orange = hsl(18, 80, 44),
    orange100 = hsl(17, 100, 70),
    orange300 = hsl(17, 94, 51),
    orange500 = hsl(18, 80, 44),
    orange700 = hsl(18, 81, 35),
    orange900 = hsl(18, 80, 20),
    red = hsl(1, 71, 52),
    red100 = hsl(1, 100, 80),
    red300 = hsl(1, 90, 64),
    red500 = hsl(1, 71, 52),
    red700 = hsl(1, 71, 42),
    red900 = hsl(1, 71, 20),
    magenta = hsl(331, 64, 52),
    magenta100 = hsl(331, 100, 73),
    magenta300 = hsl(331, 86, 64),
    magenta500 = hsl(331, 64, 52),
    magenta700 = hsl(331, 64, 42),
    magenta900 = hsl(331, 65, 20),
    violet = hsl(237, 43, 60),
    violet100 = hsl(236, 100, 90),
    violet300 = hsl(237, 69, 77),
    violet500 = hsl(237, 43, 60),
    violet700 = hsl(237, 43, 50),
    violet900 = hsl(237, 42, 25),
    blue = hsl(205, 69, 49),
    blue100 = hsl(205, 100, 83),
    blue300 = hsl(205, 90, 62),
    blue500 = hsl(205, 69, 49),
    blue700 = hsl(205, 70, 35),
    blue900 = hsl(205, 69, 20),
    cyan = hsl(175, 59, 40),
    cyan100 = hsl(176, 100, 86),
    cyan300 = hsl(175, 85, 55),
    cyan500 = hsl(175, 59, 40),
    cyan700 = hsl(182, 59, 25),
    cyan900 = hsl(183, 58, 15),
    green = hsl(68, 100, 30),
    green100 = hsl(90, 100, 84),
    green300 = hsl(76, 100, 49),
    green500 = hsl(68, 100, 30),
    green700 = hsl(68, 100, 20),
    green900 = hsl(68, 100, 10),

    bg = hsl(192, 100, 5),
    bg_highlight = hsl(192, 100, 11),
    fg = hsl(186, 8, 55),
}

--vim.api.nvim_set_hl(0, "Normal",      { fg = color.base0, bg = color.bg })
vim.api.nvim_set_hl(0, "Normal",      { fg = color.base0, bg = nil })
vim.api.nvim_set_hl(0, "Comment",     { fg = color.base01, bg = nil, italic = true })
vim.api.nvim_set_hl(0, "Statement",   { fg = color.green500, bg = nil, italic = false })
vim.api.nvim_set_hl(0, "Keyword",     { fg = color.green500, bg = nil })
vim.api.nvim_set_hl(0, "Function",     { fg = color.blue500, bg = nil })
vim.api.nvim_set_hl(0, "Identifier",     { fg = color.blue500, bg = nil })
vim.api.nvim_set_hl(0, "Operator",     { fg = color.green500, bg = nil })
vim.api.nvim_set_hl(0, "Type",     { fg = color.yellow500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "Special",     { fg = color.orange500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "Constant",     { fg = color.cyan500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "String",     { fg = color.cyan500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "Character",     { fg = color.cyan500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "MatchParen",  { fg = color.base1, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "Todo",  { fg = color.magenta500, bg = nil })
vim.api.nvim_set_hl(0, "Title",  { fg = color.orange500, bg = nil })
vim.api.nvim_set_hl(0, "Search",  { fg = color.yellow500, reverse = true })

-- Editor
vim.api.nvim_set_hl(0, "Error",     { fg = color.red500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "LineNr",     { fg = color.yellow700, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "Pmenu",     { fg = color.base0, bg = color.base02 }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = color.base01, bg = color.base02 }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "Visual",       { fg = color.bg, bg = color.base0 })
vim.api.nvim_set_hl(0, "CursorLine",       { fg = nil, bg = color.base03 })
vim.api.nvim_set_hl(0, "StatusLine",       { fg = color.base1, bg = color.base03 })
vim.api.nvim_set_hl(0, "NonText",       { fg = color.base00, bg = nil })

-- Markdown
vim.api.nvim_set_hl(0, "markdownH1",     { fg = color.magenta500, bg = nil, bold = true }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "markdownH2",     { fg = color.violet500, bg = nil, bold = true }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "markdownLinkText",     { fg = color.blue500, bg = nil }) -- int, long, char, etc.
vim.api.nvim_set_hl(0, "markdownCode",     { fg = color.yellow500, bg = color.green900 })
vim.api.nvim_set_hl(0, "markdownCodeBlock",     { fg = color.yellow500, bg = color.green900 })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter",     { fg = color.base0, bg = nil, bold = true })
