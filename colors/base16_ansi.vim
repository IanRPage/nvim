" A pure-ANSI colorscheme for VIM, designed to leverage the excellent Base16
" colors you've already defined for your terminal emulator or via base16-shell.
" No more mismatched Vim and terminal colors!
"
" Author: Benjamin Lodi <brlodi@gmail.com>
"
" WARNING: This *will* look terrible without Base16 terminal colors, which map
"   various shades of grey to many of the bright color points.
" WARNING: iTerm 2 users, make sure you're using a base16-*.dark.itermcolors
"   file, even if you have a light theme.
"   For example, if you want the base16-google scheme use:
"     - base16-google.dark.itermcolors
"     - base16-googledark.dark.itermcolors 
"     - base16-googlelight.dark.itermcolors
"   DO NOT USE THE FOLLOWING
"     - base16-google.light.itermcolors
"     - base16-googledark.light.itermcolors 
"     - base16-googlelight.light.itermcolors

set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="base16_ansi"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal           ctermfg=7       ctermbg=none    cterm=none
hi CursorLine       ctermfg=none    ctermbg=11      cterm=none
hi LineNr           ctermfg=8       ctermbg=none    cterm=none
hi CursorLineNR     ctermfg=12      ctermbg=11      cterm=bold
hi CursorColumn     ctermfg=none    ctermbg=11      cterm=none
hi FoldColumn       ctermfg=none    ctermbg=none    cterm=none
hi SignColumn       ctermfg=none    ctermbg=none    cterm=none
hi ColorColumn      ctermfg=none    ctermbg=10      cterm=none
hi Folded           ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit        ctermfg=10      ctermbg=10      cterm=none
hi TabLine          ctermfg=12      ctermbg=10      cterm=none
hi TabLineFill      ctermfg=10      ctermbg=0       cterm=underline
hi TabLineSel       ctermfg=none    ctermbg=0       cterm=bold
hi StatusLine       ctermfg=none    ctermbg=11      cterm=none
hi StatusLineNC     ctermfg=none    ctermbg=10      cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory        ctermfg=4       ctermbg=none    cterm=none
hi Search           ctermfg=0       ctermbg=15      cterm=none
hi IncSearch        ctermfg=0       ctermbg=7       cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi WildMenu         ctermfg=0       ctermbg=6       cterm=bold
hi Question         ctermfg=6       ctermbg=none    cterm=none
hi Title            ctermfg=15      ctermbg=none    cterm=bold
hi ModeMsg          ctermfg=13      ctermbg=none    cterm=none
hi MoreMsg          ctermfg=13      ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen       ctermfg=none    ctermbg=11      cterm=bold
hi Visual           ctermfg=none    ctermbg=11      cterm=none
hi NonText          ctermfg=8       ctermbg=none    cterm=none
hi EndOfBuffer      ctermfg=11      ctermbg=none    cterm=none

hi Todo             ctermfg=3       ctermbg=none    cterm=none
hi Underlined       ctermfg=none    ctermbg=none    cterm=underline
hi Error            ctermfg=1       ctermbg=none    cterm=none
hi ErrorMsg         ctermfg=1       ctermbg=none    cterm=none
hi WarningMsg       ctermfg=3       ctermbg=none    cterm=none
hi Ignore           ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey       ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant         ctermfg=5       ctermbg=none    cterm=none
hi String           ctermfg=2       ctermbg=none    cterm=none

hi Character        ctermfg=6       ctermbg=none    cterm=none
hi Number           ctermfg=9       ctermbg=none    cterm=none
hi Boolean          ctermfg=9       ctermbg=none    cterm=none
hi Float            ctermfg=9       ctermbg=none    cterm=none

hi Identifier       ctermfg=1       ctermbg=none    cterm=none
hi Function         ctermfg=4       ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Comment          ctermfg=8       ctermbg=none    cterm=none

hi Statement        ctermfg=5       ctermbg=none    cterm=none
" hi Conditional      ctermfg=5    ctermbg=none    cterm=none
" hi Repeat           ctermfg=5    ctermbg=none    cterm=none
" hi Label            ctermfg=none    ctermbg=none    cterm=none
" hi Operator         ctermfg=none    ctermbg=none    cterm=none
" hi Keyword          ctermfg=5    ctermbg=none    cterm=none
" hi Exception        ctermfg=none    ctermbg=none    cterm=none

hi Special          ctermfg=9    ctermbg=none    cterm=none
" hi SpecialChar      ctermfg=none    ctermbg=none    cterm=none
" hi Tag              ctermfg=none    ctermbg=none    cterm=none
" hi Delimiter        ctermfg=none    ctermbg=none    cterm=none
" hi SpecialComment   ctermfg=none    ctermbg=none    cterm=none
" hi Debug            ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc          ctermfg=5    ctermbg=none    cterm=none
hi Include          ctermfg=14    ctermbg=none    cterm=none
" hi Define           ctermfg=5    ctermbg=none    cterm=none
" hi Macro            ctermfg=5    ctermbg=none    cterm=none
" hi PreCondit        ctermfg=none    ctermbg=none    cterm=none

hi Type             ctermfg=3    ctermbg=none    cterm=none
" hi StorageClass     ctermfg=none    ctermbg=none    cterm=none
" hi Structure        ctermfg=none    ctermbg=none    cterm=none
" hi Typedef          ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd          ctermfg=2     ctermbg=none    cterm=none
hi DiffChange       ctermfg=3     ctermbg=none    cterm=none
hi DiffDelete       ctermfg=1     ctermbg=none    cterm=none
hi DiffText         ctermfg=3     ctermbg=none    cterm=bold
hi diffAdded        ctermfg=2     ctermbg=none    cterm=none
hi diffChanged      ctermfg=3     ctermbg=none    cterm=none
hi diffRemoved      ctermfg=1     ctermbg=none    cterm=none
hi diffLine         ctermfg=3     ctermbg=none    cterm=bold

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu            ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel         ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar        ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb       ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad         ctermfg=none    ctermbg=none    cterm=undercurl
hi SpellCap         ctermfg=none    ctermbg=none    cterm=underline
hi SpellLocal       ctermfg=none    ctermbg=none    cterm=none
hi SpellRare        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Ruby
" --------------------------------
hi link rubyStringDelimiter rubyString
hi link rubyRegexpDelimiter rubyRegexp
hi rubyRegexp       ctermfg=6    ctermbg=none    cterm=none
