set background=dark

hi clear

let g:colors_name = 'ansi'
set notermguicolors

" This color scheme relies on ANSI colors only. It automatically inherits
" the 16 colors of your terminal color scheme. You can change the colors of
" certain highlight groups by picking a different color from the following set
" of colors. If you sticked to the ANSI color palette conventions when setting
" colors in your terminal emulator, this will look pretty neat. If you used
" a terminal color scheme that uses a different convention (e.g. base16)
" colors will likely look very odd if you use this color scheme.
"
" 0: Black		│   8: Bright Black (dark gray)
" 1: Red		│   9: Bright Red
" 2: Green		│  10: Bright Green
" 3: Yellow		│  11: Bright Yellow
" 4: Blue		│  12: Bright Blue
" 5: Magenta		│  13: Bright Magenta
" 6: Cyan		│  14: Bright Cyan
" 7: White (gray)	│  15: Bright White
"
" Use the 'cterm' argument to make certain highlight groups appear in italic
" (if your terminal and font support it), bold, reverse, underlined, etc.
" See ':help attr-list' for possible options.


" Editor
hi NonText 		ctermfg=0
hi WinSeparator 	ctermfg=8
hi LineNr		ctermfg=8
hi SignColumn				ctermbg=NONE
hi CursorLine		ctermfg=NONE 	ctermbg=0
hi CursorLineNr		ctermfg=6
hi Visual 		ctermfg=0 	ctermbg=7
hi Search				ctermbg=11
hi IncSearch 		ctermfg=0 	ctermbg=1
hi CurSearch 				ctermbg=3
hi TabLine		ctermfg=7	ctermbg=0
hi TabLineFill		ctermfg=14	ctermbg=NONE
hi TabLineSel		ctermfg=0	ctermbg=11
hi StatusLine		ctermfg=0	ctermbg=7	cterm=bold
hi StatusLineNC		ctermfg=15	ctermbg=0	cterm=NONE

" Syntax
hi Comment 		ctermfg=8
hi Constant		ctermfg=3
hi String		ctermfg=2
hi Character		ctermfg=14
hi Number		ctermfg=3
hi Float		ctermfg=3
hi Boolean		ctermfg=3
hi Identifier		ctermfg=12
hi Function		ctermfg=4
hi Statement		ctermfg=5
hi Conditional		ctermfg=2 " if, then, else, endif, switch
hi Repeat		ctermfg=2 " for, do, while
hi Label		ctermfg=3 " case, default
hi Operator		ctermfg=6 " sizeof, +, *
hi Keyword		ctermfg=5
hi StorageClass		ctermfg=3 " static, register, volatile
hi Structure		ctermfg=3 " struct, union, enum
hi Typedef		ctermfg=3
hi Special		ctermfg=9
hi Type			ctermfg=3 " int, long, char

" Linked highlight groups
hi link EndOfBuffer NonText
hi link VertSplit WinSeparator


" treesitter
hi @tag			ctermfg=5
hi @tag.attribute	ctermfg=14
hi @tag.delimiter	ctermfg=6
