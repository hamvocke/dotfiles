" root-loops.vim -- Root Loops Vim Color Scheme.
" Webpage:          https://rootloops.sh
" Description:      A neovim color scheme for cereal lovers

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "root loops"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi NonText ctermfg=0 guifg=#2e3859
    hi Comment ctermfg=8 cterm=italic guifg=#586899 gui=italic
    hi Constant ctermfg=3 guifg=#f49437
    hi Error ctermfg=1 guifg=#fb80aa
    hi Identifier ctermfg=9 guifg=#fda7c1
    hi Function ctermfg=4 guifg=#56b8f7
    hi Special ctermfg=13 guifg=#ceb5fd
    hi Statement ctermfg=5 guifg=#bd97fc
    hi String ctermfg=2 guifg=#a1bd22
    hi Operator ctermfg=6 guifg=#28c8b1
    hi Boolean ctermfg=3 guifg=#f49437
    hi Label ctermfg=14 guifg=#30e1c7
    hi Keyword ctermfg=5 guifg=#bd97fc
    hi Exception ctermfg=5 guifg=#bd97fc
    hi Conditional ctermfg=5 guifg=#bd97fc
    hi PreProc ctermfg=13 guifg=#ceb5fd
    hi Include ctermfg=5 guifg=#bd97fc
    hi Macro ctermfg=5 guifg=#bd97fc
    hi StorageClass ctermfg=11 guifg=#fcb173
    hi Structure ctermfg=11 guifg=#fcb173
    hi Todo ctermbg=9 ctermfg=0 cterm=bold guibg=#fda7c1 guifg=#1a2137 gui=bold
    hi Type ctermfg=11 guifg=#fcb173
    hi Underlined cterm=underline gui=underline
    hi Bold cterm=bold gui=bold
    hi Italic cterm=italic gui=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi StatusLine ctermbg=8 ctermfg=15 cterm=NONE guibg=#586899 guifg=#e7ebf6 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE guibg=#2e3859 guifg=#f5f6fb gui=NONE
    hi VertSplit ctermfg=8 guifg=#586899
    hi TabLine ctermbg=0 ctermfg=7 guibg=#2e3859 guifg=#bcc6e3
    hi TabLineFill ctermbg=NONE ctermfg=0 guibg=NONE guifg=#2e3859
    hi TabLineSel ctermbg=11 ctermfg=0 guibg=#fcb173 guifg=#2e3859
    hi Title ctermfg=4 cterm=bold guifg=#56b8f7 gui=bold
    hi CursorLine ctermbg=0 ctermfg=NONE guibg=#2e3859 guifg=NONE
    hi Cursor ctermbg=15 ctermfg=0 guibg=#e7ebf6 guifg=#1a2137
    hi CursorColumn ctermbg=0 guibg=#2e3859
    hi LineNr ctermfg=8 guifg=#586899
    hi CursorLineNr ctermfg=6 guifg=#28c8b1
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold guibg=#586899 guifg=#e7ebf6 gui=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold guibg=#586899 guifg=#e7ebf6 gui=bold
    hi Pmenu ctermbg=0 ctermfg=15 guibg=#2e3859 guifg=#e7ebf6
    hi PmenuSbar ctermbg=8 ctermfg=7 guibg=#586899 guifg=#bcc6e3
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold guibg=#586899 guifg=#e7ebf6 gui=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE guibg=#bcc6e3 guifg=NONE
    hi FoldColumn ctermfg=7 guifg=#bcc6e3
    hi Folded ctermfg=12 guifg=#89cdfc
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE guibg=#2e3859 guifg=#e7ebf6 gui=NONE
    hi SpecialKey ctermfg=0 guifg=#2e3859
    hi IncSearch ctermbg=1 ctermfg=0 guibg=#fb80aa guifg=#1a2137
    hi CurSearch ctermbg=3 ctermfg=0 guibg=#f49437 guifg=#1a2137
    hi Search ctermbg=11 ctermfg=0 guibg=#fcb173 guifg=#1a2137
    hi Directory ctermfg=4 guifg=#56b8f7
    hi MatchParen ctermbg=0 ctermfg=3 cterm=underline guibg=#2e3859 guifg=#f49437 gui=underline
    hi SpellBad cterm=undercurl gui=undercurl guisp=#fda7c1
    hi SpellCap cterm=undercurl gui=undercurl guisp=#fcb173
    hi SpellLocal cterm=undercurl gui=undercurl guisp=#89cdfc
    hi SpellRare cterm=undercurl gui=undercurl guisp=#b5d427
    hi ColorColumn ctermbg=8 guibg=#586899
    hi SignColumn ctermfg=7 guifg=#bcc6e3
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold guibg=#f5f6fb guifg=#2e3859 gui=bold
    hi MoreMsg ctermfg=4 guifg=#56b8f7
    hi Question ctermfg=4 guifg=#56b8f7
    hi QuickFixLine ctermbg=0 ctermfg=14 guibg=#2e3859 guifg=#30e1c7
    hi Conceal ctermfg=8 guifg=#586899
    hi ToolbarLine ctermbg=0 ctermfg=15 guibg=#2e3859 guifg=#f5f6fb
    hi ToolbarButton ctermbg=8 ctermfg=15 guibg=#586899 guifg=#f5f6fb
    hi debugPC ctermfg=7 guifg=#bcc6e3
    hi debugBreakpoint ctermfg=8 guifg=#586899
    hi ErrorMsg ctermfg=1 cterm=bold,italic guifg=#fb80aa gui=bold,italic
    hi WarningMsg ctermfg=11 guifg=#fcb173
    hi DiffAdd ctermbg=10 ctermfg=0 guibg=#b5d427 guifg=#1a2137
    hi DiffChange ctermbg=12 ctermfg=0 guibg=#89cdfc guifg=#1a2137
    hi DiffDelete ctermbg=9 ctermfg=0 guibg=#fda7c1 guifg=#1a2137
    hi DiffText ctermbg=14 ctermfg=0 guibg=#30e1c7 guifg=#1a2137
    hi diffAdded ctermfg=10 guifg=#b5d427
    hi diffRemoved ctermfg=9 guifg=#fda7c1
    hi diffChanged ctermfg=12 guifg=#89cdfc
    hi diffOldFile ctermfg=11 guifg=#fcb173
    hi diffNewFile ctermfg=13 guifg=#ceb5fd
    hi diffFile ctermfg=12 guifg=#89cdfc
    hi diffLine ctermfg=7 guifg=#bcc6e3
    hi diffIndexLine ctermfg=14 guifg=#30e1c7
    hi healthError ctermfg=1 guifg=#fb80aa
    hi healthSuccess ctermfg=2 guifg=#a1bd22
    hi healthWarning ctermfg=3 guifg=#f49437
    hi NormalFloat ctermbg=0 ctermfg=15 guibg=#1a2137 guifg=#e7ebf6
    hi FloatBorder ctermbg=0 ctermfg=7 guibg=#1a2137 guifg=#bcc6e3
    hi FloatShadow ctermbg=0 ctermfg=15 guibg=#2e3859 guifg=#e7ebf6

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=NONE
    hi NonText ctermfg=0
    hi Comment ctermfg=8 cterm=italic
    hi Constant ctermfg=3
    hi Error ctermfg=1
    hi Identifier ctermfg=9
    hi Function ctermfg=4
    hi Special ctermfg=13
    hi Statement ctermfg=5
    hi String ctermfg=2
    hi Operator ctermfg=6
    hi Boolean ctermfg=3
    hi Label ctermfg=14
    hi Keyword ctermfg=5
    hi Exception ctermfg=5
    hi Conditional ctermfg=5
    hi PreProc ctermfg=13
    hi Include ctermfg=5
    hi Macro ctermfg=5
    hi StorageClass ctermfg=11
    hi Structure ctermfg=11
    hi Todo ctermbg=9 ctermfg=0 cterm=bold
    hi Type ctermfg=11
    hi Underlined cterm=underline
    hi Bold cterm=bold
    hi Italic cterm=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi StatusLine ctermbg=8 ctermfg=15 cterm=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE
    hi VertSplit ctermfg=8
    hi TabLine ctermbg=0 ctermfg=7
    hi TabLineFill ctermbg=NONE ctermfg=0
    hi TabLineSel ctermbg=11 ctermfg=0
    hi Title ctermfg=4 cterm=bold
    hi CursorLine ctermbg=0 ctermfg=NONE
    hi Cursor ctermbg=15 ctermfg=0
    hi CursorColumn ctermbg=0
    hi LineNr ctermfg=8
    hi CursorLineNr ctermfg=6
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold
    hi Pmenu ctermbg=0 ctermfg=15
    hi PmenuSbar ctermbg=8 ctermfg=7
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE
    hi FoldColumn ctermfg=7
    hi Folded ctermfg=12
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE
    hi SpecialKey ctermfg=0
    hi IncSearch ctermbg=1 ctermfg=0
    hi CurSearch ctermbg=3 ctermfg=0
    hi Search ctermbg=11 ctermfg=0
    hi Directory ctermfg=4
    hi MatchParen ctermbg=0 ctermfg=3 cterm=underline
    hi SpellBad cterm=undercurl
    hi SpellCap cterm=undercurl
    hi SpellLocal cterm=undercurl
    hi SpellRare cterm=undercurl
    hi ColorColumn ctermbg=8
    hi SignColumn ctermfg=7
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold
    hi MoreMsg ctermfg=4
    hi Question ctermfg=4
    hi QuickFixLine ctermbg=0 ctermfg=14
    hi Conceal ctermfg=8
    hi ToolbarLine ctermbg=0 ctermfg=15
    hi ToolbarButton ctermbg=8 ctermfg=15
    hi debugPC ctermfg=7
    hi debugBreakpoint ctermfg=8
    hi ErrorMsg ctermfg=1 cterm=bold,italic
    hi WarningMsg ctermfg=11
    hi DiffAdd ctermbg=10 ctermfg=0
    hi DiffChange ctermbg=12 ctermfg=0
    hi DiffDelete ctermbg=9 ctermfg=0
    hi DiffText ctermbg=14 ctermfg=0
    hi diffAdded ctermfg=10
    hi diffRemoved ctermfg=9
    hi diffChanged ctermfg=12
    hi diffOldFile ctermfg=11
    hi diffNewFile ctermfg=13
    hi diffFile ctermfg=12
    hi diffLine ctermfg=7
    hi diffIndexLine ctermfg=14
    hi healthError ctermfg=1
    hi healthSuccess ctermfg=2
    hi healthWarning ctermfg=3
    hi NormalFloat ctermbg=0 ctermfg=15
    hi FloatBorder ctermbg=0 ctermfg=7
    hi FloatShadow ctermbg=0 ctermfg=15
endif

hi link EndOfBuffer NonText
hi link SpecialComment Special
hi link Define PreProc
hi link PreCondit PreProc
hi link Number Constant
hi link Float Number
hi link Typedef Type
hi link SpecialChar Special
hi link Debug Special
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WinSeparator VertSplit
hi link WinBar StatusLine
hi link WinBarNC StatusLineNC
hi link lCursor Cursor
hi link CursorIM Cursor
hi link Terminal Normal

if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = [ '#2e3859', '#fb80aa', '#a1bd22', '#f49437', '#56b8f7', '#bd97fc', '#28c8b1', '#bcc6e3', '#586899', '#fda7c1', '#b5d427', '#fcb173', '#89cdfc', '#ceb5fd', '#30e1c7', '#f5f6fb' ]
endif
