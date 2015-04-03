
" ___ __) ) ___ ______)
" (, |/ (__/_____) /) (, / /) /)
" | _/_ _ __ ____ / ___// _____ / _ (/_ // _
" ) /|_ (___(/_/ (_/ / /_ (_/ (_)(/_(_)/ (_ ) / (_(_/_) (/__(/_
" (_/ (______) (_/
"
" guns <self@sungpae.com>

" Version: 1.6
" License: MIT
" Homepage: http://github.com/guns/xterm-color-table.vim
"
" NOTES:
"
" * Provides command :XtermColorTable, as well as variants for different splits
" * Xterm numbers on the left, equivalent RGB values on the right
" * Press  to yank current color (shortcut for yiw)
" * Press  to toggle RGB text visibility
" * Press  to set RGB text to current color
" * Buffer behavior similar to Scratch.vim
"
" INSPIRED BY:
"
" * http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" * http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" * http://www.vim.org/scripts/script.php?script_id=664


" We have a dependency on buffer-local autocommands
if version < 700
    echo 'FAIL: XtermColorTable requires vim 7.0+'
    finish
endif

let s:bufname = '__XtermColorTable__'

if !exists('g:XtermColorTableDefaultOpen')
    let g:XtermColorTableDefaultOpen = 'split'
endif


command! XtermColorTable execute 'call <SID>XtermColorTable(g:XtermColorTableDefaultOpen)'
command! SXtermColorTable call <SID>XtermColorTable('split')
command! VXtermColorTable call <SID>XtermColorTable('vsplit')
command! TXtermColorTable call <SID>XtermColorTable('tabnew')
command! EXtermColorTable call <SID>XtermColorTable('edit')
command! OXtermColorTable call <SID>XtermColorTable('edit') | only


augroup XtermColorTable "{{{
    autocmd!
    autocmd BufNewFile __XtermColorTable__ call <SID>ColorTable()
    autocmd ColorScheme * silent! doautoall XtermColorTableBuffer ColorScheme
augroup END "}}}


function! <SID>XtermColorTable(open) "{{{
    let bufid = bufnr(s:bufname)
    let winid = bufwinnr(bufid)

    if bufid == -1
" Create new buffer
        execute a:open.' '.s:bufname
        return
    elseif winid != -1 && winnr('$') > 1
" Close extant window
        execute winid.'wincmd w' | close
    endif

" Open extant buffer
    execute a:open.' +buffer'.bufid
endfunction "}}}


function! <SID>ColorTable() "{{{
    let rows = []

    call add(rows, <SID>ColorRow(0, 7))
    call add(rows, <SID>ColorRow(8, 15))
    call add(rows, '')

    for lnum in range(16, 250, 6)
        call add(rows, <SID>ColorRow(lnum, lnum + 5))
        if lnum == 226
            call add(rows, '')
        endif
    endfor

    if &modifiable
        call append(0, rows)
        call append(len(rows) + 1, <SID>HelpComment())
        call <SID>SetBufferOptions()
    endif
endfunction "}}}


function! <SID>ColorRow(start, end) "{{{
    return join(map(range(a:start, a:end), '<SID>ColorCell(v:val)'))
endfunction "}}}


function! <SID>ColorCell(n) "{{{
    let rgb = s:xterm_colors[a:n]

" Clear extant values
    execute 'silent! syntax clear fg_'.a:n
    execute 'silent! syntax clear bg_'.a:n

    execute 'syntax match fg_'.a:n.' " '.a:n.' " containedin=ALL'
    execute 'syntax match bg_'.a:n.' "'. rgb .'" containedin=ALL'

    call <SID>HighlightCell(a:n, -1)

    return printf(' %3s %7s', a:n, rgb)
endfunction "}}}


function! <SID>HighlightCell(n, bgf) "{{{
    let rgb = s:xterm_colors[a:n]

" bgf has three states:
" -2) black or white depending on intensity
" -1) same as background
" 0+) xterm color value
    if a:bgf == -2
        let sum = 0
        for val in map(split(substitute(rgb, '^#', '', ''), '\v\x{2}\zs'), 'str2nr(v:val, 16)')
" TODO: does Vimscript have a fold/reduce function?
            let sum += val
        endfor
        let bgf = sum > (0xff * 1.5) ? 0 : 15
    elseif a:bgf == -1
        let bgf = a:n
    else
        let bgf = a:bgf
    endif

" Clear any extant values
    execute 'silent! highlight clear fg_'.a:n
    execute 'silent! highlight clear bg_'.a:n

    execute 'highlight fg_'.a:n.' ctermfg='.a:n.' guifg='.rgb
    execute 'highlight bg_'.a:n.' ctermbg='.a:n.' guibg='.rgb
    execute 'highlight bg_'.a:n.' ctermfg='.bgf.' guifg='.s:xterm_colors[bgf]
endfunction "}}}


function! <SID>SetBufferOptions() "{{{
    setlocal buftype=nofile bufhidden=hide buflisted
    setlocal nomodified nomodifiable noswap
    setlocal nocursorline nocursorcolumn
    setlocal iskeyword

    let b:XtermCo
 

    nmap <silent><buffer

    nmap <sile

" Colorscheme
" register a handler to deal with this
    augroup Xterm
 
        
 
endfunction "}}}


function! <SID>HelpComment() "{{{
" we have to define our ow
    silent! syntax clear XtermColorTableComment
    syntax match 
    highlight link XtermColorTableComment Comment

   
    call add(lines, "; # to copy current co
    call add(lines, "; t to toggle RGB visibil
    call add(lines, "; f to set RGB foregr


endfunction "}


function! <SID>ToggleRgbVisibility() "{{{
    let bgf = b:XtermCo
    let b:XtermColorTableRgbVisible = (b:XtermColorTableRgbVisible

    call <SID>HighlightTable(bgf)
endfunction "}}}


f




function! <SID>SetRgbForeground(cword) "{{{
    i
        let snam
        let b:XtermColorTableBGF = substitute(snam
    else
 
    e

    if b:XtermColorTableRgbVisible
  

        call <SID>ToggleRgbVisibility()
  
endfunction "}}}


""" Xterm 256 color diction

let 


    \ '10': '#00ff00', '11': '#ffff00', '12': '#0000ff', '13': '#ff00ff', '14': '#00ffff',
    \ '15': '#ffffff', '16': '#000000', '17': '#00005f', '18
    \ '20': '#0000df', '21': '#0000ff', '22': '#005f00', '23'
    \ '25': '#005faf', '26': '#005fdf', '27': '#005fff', '28'
    \ '30': '#008787', '31': '#0087af', '32': '#0087df', '3
    \ '35': '#00af5f', '36': '#00af87', '37': '#00afaf', '38': '#0


    \ '50': '#00ffdf', '51':
    \ '55': 
    \ '60': '#5f5f87', '61': '#5f5faf', '62': '#5f5fdf', '63': '#
    \ '65': '#5f875f', '66': '#5f8787', '67': '#5f87af', '68': '#5f87df', '69
    \ '70': '#5f


    \ '85': '#5fffaf', '86': '#5fffdf', '
    \ '90': '#870087', '91': '#8
    \ '95': '#875f5f', '96': '#

    \ '105': '#878
    \ '110': '#87af
    \ '115': '#87dfaf', '116': '#87d
    \ '120': '
    \ '125': '#af005f', '126': '#af0087'
    \ '130': '#af5f00
    \ '135': '#af5fff', '136': '#af8700'
    \ '14

    \ '150': '#afdf8
    \ '155': '#afff5f', '156': '#af
    \ '160': '#d


    \ '175': '#df87af', '176': '
    \ '180': '#df

    \ '190': '#dfff00', '191': '#dfff5f
    \ '195': '#dfffff', '196': '#ff0000'
    \ '200': '#ff00df'

    \ '210': '#ff8787', '211': '#
    \ '215': '#ffaf5f', '216': '#ffaf87', '217': '#ff
    \ '220': '#ffdf00'
    \ '225': '#ffdfff', '226':
    \ '230': 
    \ '235

    \ '245': '#8a8
    \ '250': '#bcbcbc', '251
    \ '255': '#eeeeee', 'fg': 'fg', 'bg': 'bg', 'NONE'

"}}}
