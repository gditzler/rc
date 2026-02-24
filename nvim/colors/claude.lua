-- Claude colorscheme for Neovim
-- Inspired by Claude's warm terracotta palette and the Claude VS Code theme

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "claude"
vim.o.termguicolors = true

local c = {
  -- Backgrounds (warm dark tones)
  bg0       = "#1A1612",
  bg1       = "#231F1B",
  bg2       = "#2D2824",
  bg3       = "#3A342E",
  bg4       = "#4A4239",
  bg5       = "#5A5149",

  -- Foregrounds (warm cream tones)
  fg0       = "#ECE4D8",
  fg1       = "#DDD5C8",
  fg2       = "#B5ADA1",
  fg3       = "#8A8278",
  fg4       = "#635B52",

  -- Palette
  terracotta = "#D97757",
  coral      = "#E5956C",
  gold       = "#DEB974",
  sand       = "#C9B896",
  sage       = "#8EAB6E",
  mint       = "#7DB09A",
  teal       = "#6FA8B5",
  sky        = "#7EADD4",
  lavender   = "#B39FD0",
  rose       = "#D0838A",

  -- Diagnostics
  error      = "#D4635E",
  warn       = "#DEB974",
  info       = "#6FA8B5",
  hint       = "#8EAB6E",

  -- Git/diff
  added      = "#8EAB6E",
  changed    = "#DEB974",
  deleted    = "#D4635E",

  -- Special
  none       = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- Editor highlights
-- ============================================================================
hi("Normal",        { fg = c.fg1, bg = c.bg0 })
hi("NormalFloat",   { fg = c.fg1, bg = c.bg1 })
hi("NormalNC",      { fg = c.fg1, bg = c.bg0 })
hi("FloatBorder",   { fg = c.bg5, bg = c.bg1 })
hi("FloatTitle",    { fg = c.terracotta, bg = c.bg1, bold = true })
hi("Cursor",        { fg = c.bg0, bg = c.fg1 })
hi("lCursor",       { fg = c.bg0, bg = c.fg1 })
hi("CursorIM",      { fg = c.bg0, bg = c.fg1 })
hi("CursorLine",    { bg = c.bg2 })
hi("CursorLineNr",  { fg = c.terracotta, bold = true })
hi("CursorColumn",  { bg = c.bg2 })
hi("ColorColumn",   { bg = c.bg2 })

hi("LineNr",        { fg = c.fg4 })
hi("SignColumn",    { fg = c.fg4, bg = c.bg0 })
hi("FoldColumn",    { fg = c.fg4, bg = c.bg0 })
hi("Folded",        { fg = c.fg3, bg = c.bg2 })

hi("Visual",        { bg = c.bg3 })
hi("VisualNOS",     { bg = c.bg3 })
hi("Search",        { fg = c.fg0, bg = c.bg4 })
hi("IncSearch",     { fg = c.bg0, bg = c.terracotta })
hi("CurSearch",     { fg = c.bg0, bg = c.terracotta })
hi("Substitute",    { fg = c.bg0, bg = c.coral })

hi("MatchParen",    { fg = c.terracotta, bold = true, underline = true })

hi("Pmenu",         { fg = c.fg1, bg = c.bg1 })
hi("PmenuSel",      { fg = c.fg0, bg = c.bg3 })
hi("PmenuSbar",     { bg = c.bg2 })
hi("PmenuThumb",    { bg = c.bg5 })

hi("StatusLine",    { fg = c.fg1, bg = c.bg2 })
hi("StatusLineNC",  { fg = c.fg3, bg = c.bg1 })
hi("TabLine",       { fg = c.fg3, bg = c.bg1 })
hi("TabLineFill",   { bg = c.bg1 })
hi("TabLineSel",    { fg = c.fg0, bg = c.bg0, bold = true })
hi("WinBar",        { fg = c.fg2, bg = c.bg0, bold = true })
hi("WinBarNC",      { fg = c.fg3, bg = c.bg0 })
hi("WinSeparator",  { fg = c.bg4, bg = c.bg0 })
hi("VertSplit",     { fg = c.bg4, bg = c.bg0 })

hi("Title",         { fg = c.terracotta, bold = true })
hi("Directory",     { fg = c.teal })
hi("SpecialKey",    { fg = c.fg4 })
hi("NonText",       { fg = c.bg4 })
hi("EndOfBuffer",   { fg = c.bg0 })
hi("Whitespace",    { fg = c.bg3 })
hi("Conceal",       { fg = c.fg4 })
hi("Question",      { fg = c.sage })
hi("MoreMsg",       { fg = c.sage })
hi("ModeMsg",       { fg = c.fg1, bold = true })
hi("WarningMsg",    { fg = c.warn })
hi("ErrorMsg",      { fg = c.error, bold = true })

hi("WildMenu",      { fg = c.bg0, bg = c.terracotta })
hi("QuickFixLine",  { bg = c.bg2 })

-- Spell
hi("SpellBad",      { undercurl = true, sp = c.error })
hi("SpellCap",      { undercurl = true, sp = c.warn })
hi("SpellLocal",    { undercurl = true, sp = c.info })
hi("SpellRare",     { undercurl = true, sp = c.lavender })

-- Diff
hi("DiffAdd",       { bg = "#2A3325" })
hi("DiffChange",    { bg = "#2D2A1E" })
hi("DiffDelete",    { bg = "#332222" })
hi("DiffText",      { bg = "#3D371E" })

-- ============================================================================
-- Syntax highlighting
-- ============================================================================
hi("Comment",       { fg = c.fg3, italic = true })

hi("Constant",      { fg = c.rose })
hi("String",        { fg = c.sage })
hi("Character",     { fg = c.sage })
hi("Number",        { fg = c.rose })
hi("Boolean",       { fg = c.rose })
hi("Float",         { fg = c.rose })

hi("Identifier",    { fg = c.fg1 })
hi("Function",      { fg = c.gold })

hi("Statement",     { fg = c.terracotta })
hi("Conditional",   { fg = c.terracotta })
hi("Repeat",        { fg = c.terracotta })
hi("Label",         { fg = c.coral })
hi("Operator",      { fg = c.coral })
hi("Keyword",       { fg = c.terracotta })
hi("Exception",     { fg = c.terracotta })

hi("PreProc",       { fg = c.terracotta })
hi("Include",       { fg = c.terracotta })
hi("Define",        { fg = c.terracotta })
hi("Macro",         { fg = c.coral })
hi("PreCondit",     { fg = c.terracotta })

hi("Type",          { fg = c.lavender })
hi("StorageClass",  { fg = c.terracotta })
hi("Structure",     { fg = c.lavender })
hi("Typedef",       { fg = c.lavender })

hi("Special",       { fg = c.coral })
hi("SpecialChar",   { fg = c.mint })
hi("Tag",           { fg = c.terracotta })
hi("Delimiter",     { fg = c.fg2 })
hi("SpecialComment",{ fg = c.fg3, italic = true })
hi("Debug",         { fg = c.coral })

hi("Underlined",    { underline = true })
hi("Bold",          { bold = true })
hi("Italic",        { italic = true })

hi("Ignore",        { fg = c.bg5 })
hi("Error",         { fg = c.error })
hi("Todo",          { fg = c.bg0, bg = c.terracotta, bold = true })

-- ============================================================================
-- Treesitter highlights
-- ============================================================================
hi("@variable",              { fg = c.fg1 })
hi("@variable.builtin",      { fg = c.rose, italic = true })
hi("@variable.parameter",    { fg = c.sand })
hi("@variable.member",       { fg = c.teal })

hi("@constant",              { fg = c.rose })
hi("@constant.builtin",      { fg = c.rose, italic = true })
hi("@constant.macro",        { fg = c.rose })

hi("@module",                { fg = c.teal })
hi("@label",                 { fg = c.coral })

hi("@string",                { fg = c.sage })
hi("@string.documentation",  { fg = c.sage, italic = true })
hi("@string.regex",          { fg = c.mint })
hi("@string.escape",         { fg = c.mint })
hi("@string.special",        { fg = c.mint })

hi("@character",             { fg = c.sage })
hi("@character.special",     { fg = c.mint })

hi("@boolean",               { fg = c.rose })
hi("@number",                { fg = c.rose })
hi("@number.float",          { fg = c.rose })

hi("@type",                  { fg = c.lavender })
hi("@type.builtin",          { fg = c.lavender, italic = true })
hi("@type.definition",       { fg = c.lavender })
hi("@type.qualifier",        { fg = c.terracotta })

hi("@attribute",             { fg = c.gold })
hi("@property",              { fg = c.teal })

hi("@function",              { fg = c.gold })
hi("@function.builtin",      { fg = c.gold, italic = true })
hi("@function.call",         { fg = c.gold })
hi("@function.macro",        { fg = c.coral })
hi("@function.method",       { fg = c.gold })
hi("@function.method.call",  { fg = c.gold })

hi("@constructor",           { fg = c.lavender })

hi("@operator",              { fg = c.coral })

hi("@keyword",               { fg = c.terracotta })
hi("@keyword.coroutine",     { fg = c.terracotta, italic = true })
hi("@keyword.function",      { fg = c.terracotta })
hi("@keyword.operator",      { fg = c.terracotta })
hi("@keyword.import",        { fg = c.terracotta })
hi("@keyword.storage",       { fg = c.terracotta })
hi("@keyword.repeat",        { fg = c.terracotta })
hi("@keyword.return",        { fg = c.terracotta })
hi("@keyword.exception",     { fg = c.terracotta })
hi("@keyword.conditional",   { fg = c.terracotta })
hi("@keyword.directive",     { fg = c.terracotta })

hi("@punctuation.delimiter", { fg = c.fg2 })
hi("@punctuation.bracket",   { fg = c.fg2 })
hi("@punctuation.special",   { fg = c.coral })

hi("@comment",               { fg = c.fg3, italic = true })
hi("@comment.documentation", { fg = c.fg3, italic = true })
hi("@comment.error",         { fg = c.error })
hi("@comment.warning",       { fg = c.warn })
hi("@comment.todo",          { fg = c.bg0, bg = c.terracotta, bold = true })
hi("@comment.note",          { fg = c.info })

hi("@markup.heading",        { fg = c.terracotta, bold = true })
hi("@markup.heading.1",      { fg = c.terracotta, bold = true })
hi("@markup.heading.2",      { fg = c.coral, bold = true })
hi("@markup.heading.3",      { fg = c.gold, bold = true })
hi("@markup.heading.4",      { fg = c.sage, bold = true })
hi("@markup.heading.5",      { fg = c.teal, bold = true })
hi("@markup.heading.6",      { fg = c.lavender, bold = true })
hi("@markup.strong",         { bold = true })
hi("@markup.italic",         { italic = true })
hi("@markup.strikethrough",  { strikethrough = true })
hi("@markup.underline",      { underline = true })
hi("@markup.link",           { fg = c.sky, underline = true })
hi("@markup.link.url",       { fg = c.sky, underline = true })
hi("@markup.link.label",     { fg = c.teal })
hi("@markup.raw",            { fg = c.sand })
hi("@markup.raw.block",      { fg = c.sand })
hi("@markup.list",           { fg = c.coral })
hi("@markup.quote",          { fg = c.fg2, italic = true })
hi("@markup.math",           { fg = c.lavender })

hi("@tag",                   { fg = c.terracotta })
hi("@tag.attribute",         { fg = c.gold })
hi("@tag.delimiter",         { fg = c.fg3 })

-- ============================================================================
-- LSP semantic tokens
-- ============================================================================
hi("@lsp.type.class",         { fg = c.lavender })
hi("@lsp.type.decorator",     { fg = c.gold })
hi("@lsp.type.enum",          { fg = c.lavender })
hi("@lsp.type.enumMember",    { fg = c.rose })
hi("@lsp.type.function",      { fg = c.gold })
hi("@lsp.type.interface",     { fg = c.lavender })
hi("@lsp.type.macro",         { fg = c.coral })
hi("@lsp.type.method",        { fg = c.gold })
hi("@lsp.type.namespace",     { fg = c.teal })
hi("@lsp.type.parameter",     { fg = c.sand })
hi("@lsp.type.property",      { fg = c.teal })
hi("@lsp.type.struct",        { fg = c.lavender })
hi("@lsp.type.type",          { fg = c.lavender })
hi("@lsp.type.typeParameter", { fg = c.lavender, italic = true })
hi("@lsp.type.variable",      { fg = c.fg1 })

-- ============================================================================
-- Diagnostics
-- ============================================================================
hi("DiagnosticError",          { fg = c.error })
hi("DiagnosticWarn",           { fg = c.warn })
hi("DiagnosticInfo",           { fg = c.info })
hi("DiagnosticHint",           { fg = c.hint })
hi("DiagnosticOk",             { fg = c.sage })

hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2A1E1E" })
hi("DiagnosticVirtualTextWarn",  { fg = c.warn,  bg = "#2A2618" })
hi("DiagnosticVirtualTextInfo",  { fg = c.info,  bg = "#1A2628" })
hi("DiagnosticVirtualTextHint",  { fg = c.hint,  bg = "#222A1E" })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint",  { undercurl = true, sp = c.hint })

hi("DiagnosticSignError",     { fg = c.error })
hi("DiagnosticSignWarn",       { fg = c.warn })
hi("DiagnosticSignInfo",       { fg = c.info })
hi("DiagnosticSignHint",       { fg = c.hint })

-- ============================================================================
-- LSP highlights
-- ============================================================================
hi("LspReferenceText",        { bg = c.bg3 })
hi("LspReferenceRead",        { bg = c.bg3 })
hi("LspReferenceWrite",       { bg = c.bg3, bold = true })
hi("LspSignatureActiveParameter", { fg = c.terracotta, bold = true })
hi("LspInfoBorder",           { fg = c.bg5, bg = c.bg1 })
hi("LspCodeLens",             { fg = c.fg4 })

-- ============================================================================
-- Telescope
-- ============================================================================
hi("TelescopeNormal",         { fg = c.fg1, bg = c.bg1 })
hi("TelescopeBorder",         { fg = c.bg5, bg = c.bg1 })
hi("TelescopeTitle",          { fg = c.terracotta, bold = true })
hi("TelescopePromptNormal",   { fg = c.fg1, bg = c.bg2 })
hi("TelescopePromptBorder",   { fg = c.bg5, bg = c.bg2 })
hi("TelescopePromptTitle",    { fg = c.bg0, bg = c.terracotta, bold = true })
hi("TelescopePromptPrefix",   { fg = c.terracotta, bg = c.bg2 })
hi("TelescopePreviewNormal",  { fg = c.fg1, bg = c.bg0 })
hi("TelescopePreviewBorder",  { fg = c.bg5, bg = c.bg0 })
hi("TelescopePreviewTitle",   { fg = c.sage, bold = true })
hi("TelescopeResultsNormal",  { fg = c.fg1, bg = c.bg1 })
hi("TelescopeResultsBorder",  { fg = c.bg5, bg = c.bg1 })
hi("TelescopeSelection",      { fg = c.fg0, bg = c.bg3 })
hi("TelescopeSelectionCaret",  { fg = c.terracotta })
hi("TelescopeMatching",       { fg = c.terracotta, bold = true })

-- ============================================================================
-- NvimTree
-- ============================================================================
hi("NvimTreeNormal",           { fg = c.fg1, bg = c.bg1 })
hi("NvimTreeNormalNC",         { fg = c.fg1, bg = c.bg1 })
hi("NvimTreeWinSeparator",    { fg = c.bg1, bg = c.bg1 })
hi("NvimTreeRootFolder",      { fg = c.terracotta, bold = true })
hi("NvimTreeFolderName",      { fg = c.teal })
hi("NvimTreeFolderIcon",      { fg = c.teal })
hi("NvimTreeEmptyFolderName", { fg = c.fg3 })
hi("NvimTreeOpenedFolderName",{ fg = c.teal, bold = true })
hi("NvimTreeSymlink",         { fg = c.sky })
hi("NvimTreeSpecialFile",     { fg = c.gold })
hi("NvimTreeIndentMarker",    { fg = c.bg4 })
hi("NvimTreeImageFile",       { fg = c.fg2 })
hi("NvimTreeGitDirty",        { fg = c.changed })
hi("NvimTreeGitNew",          { fg = c.added })
hi("NvimTreeGitDeleted",      { fg = c.deleted })
hi("NvimTreeGitStaged",       { fg = c.added })

-- ============================================================================
-- GitSigns
-- ============================================================================
hi("GitSignsAdd",             { fg = c.added })
hi("GitSignsChange",          { fg = c.changed })
hi("GitSignsDelete",          { fg = c.deleted })
hi("GitSignsAddNr",           { fg = c.added })
hi("GitSignsChangeNr",        { fg = c.changed })
hi("GitSignsDeleteNr",        { fg = c.deleted })
hi("GitSignsAddLn",           { bg = "#2A3325" })
hi("GitSignsChangeLn",        { bg = "#2D2A1E" })
hi("GitSignsDeleteLn",        { bg = "#332222" })

-- ============================================================================
-- WhichKey
-- ============================================================================
hi("WhichKey",                { fg = c.terracotta })
hi("WhichKeyGroup",           { fg = c.teal })
hi("WhichKeyDesc",            { fg = c.fg1 })
hi("WhichKeySeparator",       { fg = c.fg4 })
hi("WhichKeyFloat",           { bg = c.bg1 })
hi("WhichKeyBorder",          { fg = c.bg5, bg = c.bg1 })
hi("WhichKeyValue",           { fg = c.fg3 })

-- ============================================================================
-- Indent guides / misc
-- ============================================================================
hi("IndentBlanklineChar",      { fg = c.bg3 })
hi("IndentBlanklineContextChar", { fg = c.bg5 })
hi("IblIndent",                { fg = c.bg3 })
hi("IblScope",                 { fg = c.bg5 })

-- ============================================================================
-- Completion (nvim-cmp)
-- ============================================================================
hi("CmpItemAbbr",             { fg = c.fg1 })
hi("CmpItemAbbrMatch",        { fg = c.terracotta, bold = true })
hi("CmpItemAbbrMatchFuzzy",   { fg = c.terracotta, bold = true })
hi("CmpItemAbbrDeprecated",   { fg = c.fg4, strikethrough = true })
hi("CmpItemKind",             { fg = c.fg2 })
hi("CmpItemMenu",             { fg = c.fg3 })

hi("CmpItemKindFunction",     { fg = c.gold })
hi("CmpItemKindMethod",       { fg = c.gold })
hi("CmpItemKindVariable",     { fg = c.fg1 })
hi("CmpItemKindKeyword",      { fg = c.terracotta })
hi("CmpItemKindText",         { fg = c.fg2 })
hi("CmpItemKindProperty",     { fg = c.teal })
hi("CmpItemKindField",        { fg = c.teal })
hi("CmpItemKindClass",        { fg = c.lavender })
hi("CmpItemKindInterface",    { fg = c.lavender })
hi("CmpItemKindStruct",       { fg = c.lavender })
hi("CmpItemKindModule",       { fg = c.teal })
hi("CmpItemKindSnippet",      { fg = c.coral })
hi("CmpItemKindConstant",     { fg = c.rose })
hi("CmpItemKindEnum",         { fg = c.lavender })
hi("CmpItemKindEnumMember",   { fg = c.rose })
hi("CmpItemKindValue",        { fg = c.rose })
hi("CmpItemKindFile",         { fg = c.fg2 })
hi("CmpItemKindFolder",       { fg = c.teal })

-- ============================================================================
-- Lualine custom theme (exported for lualine config)
-- ============================================================================
-- This is stored as a global so lualine can pick it up
vim.g.claude_lualine = true  -- flag for lualine config to detect
