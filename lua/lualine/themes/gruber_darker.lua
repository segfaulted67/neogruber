-- lualine custom theme
-- gruber-darker
local colors = {
  bg       = '#181818',
  fg       = '#e4e4ef',
  yellow   = '#f4f4bf',
  cyan     = '#96a6c8',
  darkblue = '#657b83',
  green    = '#73c936',
  orange   = '#ffdd33',
  violet   = '#9e95c7',
  magenta  = '#f5b5f4',
  blue     = '#96a6c8',
  red      = '#e5786d'
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.fg, bg = '#282828' },
    c = { fg = colors.fg, bg = colors.bg }
  },

  insert = {
    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = '#282828' },
    c = { fg = colors.fg, bg = colors.bg }
  },

  visual = {
    a = { fg = colors.bg, bg = colors.magenta, gui = 'bold' },
    b = { fg = colors.fg, bg = '#282828' },
    c = { fg = colors.fg, bg = colors.bg }
  },

  replace = {
    a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
    b = { fg = colors.fg, bg = '#282828' },
    c = { fg = colors.fg, bg = colors.bg }
  },

  command = {
    a = { fg = colors.bg, bg = colors.orange, gui = 'bold' },
    b = { fg = colors.fg, bg = '#282828' },
    c = { fg = colors.fg, bg = colors.bg }
  },

  inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg }
  }
}
