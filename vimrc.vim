" ============================================================================
" Author: Imdat Solak
" Blog: http://www.caito.de/
" Version: v1.0.0
" Update Time: 2020-03-30
" Font Used: Iosevka Nerd Font Mono Regular, 16pt
" Editor: neovim 0.4.x

" ============================================================================
" First my plugins
" ----------------------------------------------------------------------------
" NOTE: I'm using Vim-Plug
" ============================================================================
call plug#begin('~/.vim/plugged')
" ----------------------------------------------------------------------------
" File Browsing & Selection
" ----------------------------------------------------------------------------
" Famous NERDTree
Plug 'scrooloose/nerdtree'

" Show git-status within NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" ----------------------------------------------------------------------------
" Searching in Files, Grepping...
" ----------------------------------------------------------------------------
" Plug 'haya14busa/vim-asterisk'
"
" Silver Searcher (AG)
Plug 'gabesoft/vim-ags'

" Traces vim - highlights pattersn and ranges for Ex commands
Plug 'markonm/traces.vim'

" ----------------------------------------------------------------------------
" Syntax Highlighting/Checking tools
" ----------------------------------------------------------------------------
"  Syntastic - Syntax checking
Plug 'scrooloose/syntastic'

" Polyglott - Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Automatically sort python imports
Plug 'fisadev/vim-isort'

" ----------------------------------------------------------------------------
" GIT & Co.
" ----------------------------------------------------------------------------
" Git Gutter
Plug 'airblade/vim-gitgutter'

" ----------------------------------------------------------------------------
" Editing helpers
" ----------------------------------------------------------------------------
" Autoclose brackets
Plug 'Townk/vim-autoclose'

" COC - the best completion helper I could find 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tabularizer
Plug 'godlygeek/tabular'

" Easy commenting
Plug 'scrooloose/nerdcommenter'

" Easy moving around		
Plug 'easymotion/vim-easymotion'		

" Yankring with History		
Plug 'vim-scripts/YankRing.vim'		

" Vim Peekaboo - show my buffers
Plug 'junegunn/vim-peekaboo'

" Bookmarks
Plug 'mattesgroeger/vim-bookmarks'

" TableMode - use with :TableModeToggle => https://vimawesome.com/plugin/table-mode
Plug 'dhruvasagar/vim-table-mode'

" Markbar		
Plug 'yilin-yang/vim-markbar'		

" EditorConfig - makes life easier in teams
Plug 'editorconfig/editorconfig-vim'

" Vista
Plug 'liuchengxu/vista.vim'
" ----------------------------------------------------------------------------
" Window/Tab, etc. helpers
" ----------------------------------------------------------------------------
" Tab list panel
Plug 'kien/tabman.vim'

" Window chooser
Plug 't9md/vim-choosewin'

" ----------------------------------------------------------------------------
" Airline + Themes
" ----------------------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ----------------------------------------------------------------------------
" Nicer UI
" ----------------------------------------------------------------------------
" Indent Lines
Plug 'yggdroot/indentline'

" Alternative: (neovim only)
Plug 'norcalli/nvim-colorizer.lua'

" Semantic Highlighter
Plug 'jaxbot/semantic-highlight.vim'

" ----------------------------------------------------------------------------
" Others
" ----------------------------------------------------------------------------
" CtrlP
" Plug 'ctrlpvim/ctrlp.vim'

" VIM Clap
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" ----------------------------------------------------------------------------
" COLOR Schemes
" ----------------------------------------------------------------------------
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'sickill/vim-monokai'
Plug 'amadeus/vim-evokai'
Plug 'reewr/vim-monokai-phoenix'

" File Type Icons for NERDTree - supposed to be loaded as last one
Plug 'ryanoasis/vim-devicons'
call plug#end()

" ============================================================================
" General Settings
" ============================================================================
filetype plugin on
filetype indent on
filetype plugin indent on

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
" set shortmess=atI
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" tabs and spaces handling
" Convert TABS to SPACES
set expandtab
set smarttab
" ... at 4 spaces
set tabstop=4
set softtabstop=4
" ... also when I do shift
set shiftwidth=4
"
" highlight cursor line and column
set cursorline

" Line break
" set lbr
" set tw=132
set wrap

" auto read and write
set autowrite
set autoread
"
" when dealing with unsaved files ask what to do
set confirm
"
" no backup files
set nobackup
"
" other settings 
set langmenu=en_US.UTF-8
set mouse=a
set whichwrap+=<,>,h,l,[,]
set encoding=utf-8
set showmatch

" Set backspace to work as expected
set backspace=indent,eol,start

" always show status bar
set laststatus=2

" incremental search
set incsearch
" highlighted search results
set hlsearch
" search ignore case
set ignorecase

" Try being smart about case when searching
set smartcase

" muting search highlighting 
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" syntax highlight on
syntax on

set tags^=./.git/tags

" show line numbers
set nu

" Give us some space
set foldcolumn=1

" When scroolling, # lines to offset cursor from border
set scrolloff=3

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" Folding
set foldmethod=syntax
set nofoldenable
set foldlevel=2
set foldnestmax=10

" I want to have special char for each invisible, if needed
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
" If you are fighting nbsp, the below setting might be helpful:
" set listchars=tab:→\ ,space:·,nbsp:☠,trail:•,eol:¶,precedes:«,extends:»

" ============================================================================
" PLUGIN Settings
" ============================================================================
" ----------------------------------------------------------------------------
" NERDTree Setttings 
" ----------------------------------------------------------------------------
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.DS_Store$', 'DerivedData$', '\.xcodeproj$', '\.xcworkspace$']
let g:NERDTreeGitStatusUseNerdFonts = 0
" let g:NERDTreeGitStatusGitBinPath="/usr/local/git/bin/git"
let g:NERDTreeGitStatusPorcelainVersion=1

" ----------------------------------------------------------------------------
" Indentline
" ----------------------------------------------------------------------------
let g:indentLine_char = '┊'

" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char_list = ['¦', '┆', '│', '⎸',  '▏']
let g:indentLine_enabled = 1

" ----------------------------------------------------------------------------
" Yankring History
" ----------------------------------------------------------------------------
let g:yankring_history_dir = '~/.vim/dirs/'

" ----------------------------------------------------------------------------
" TabMan
" ----------------------------------------------------------------------------
let g:tabman_side = 'right'
let g:tabman_number = 0
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'

" ----------------------------------------------------------------------------
" TagBar
" ----------------------------------------------------------------------------
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" ----------------------------------------------------------------------------
" NERDCommenter
" ----------------------------------------------------------------------------
let g:NERDSpaceDelims = 1

" ----------------------------------------------------------------------------
" Syntastic Settings
" ----------------------------------------------------------------------------
" check also when just opened the file
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = []
" let g:syntastic_javascript_checkers = ['eslint']

" if you don't want to put icons on the sign column (it hides the vcs status icons of signify), set this to 0
let g:syntastic_enable_signs = 1
" custom icons (enable them if you use a patched font, and enable the previous setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
" If you want to open dart files faster, uncomment the following
let g:syntastic_dart_checkers = ['dartanalyzer']

" Swift mode
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" I'm setting Syntastic to "offline" mode so that I can run it manually
" Otherwise, opening files takes too long with 'dart', 'swift', and 'rust'
autocmd vimenter * SyntasticToggleMode
autocmd vimenter * GitGutterLineHighlightsDisable
" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ----------------------------------------------------------------------------
" Python-Mode Settings
" ----------------------------------------------------------------------------
" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0
let g:pymode_lint_signs = 0
" don't fold python code on open
let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'

let g:python3_host_prog = "/usr/local/bin/python3"
let g:python_host_prog = "/usr/local/bin/python"

" ----------------------------------------------------------------------------
" CtrlP - Ctrl P
" ----------------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/.git/*,*/.svn/*,*/DerivedData/*,*/build/*
" ----------------------------------------------------------------------------
" ChooseWin - Show Big Letters
" ----------------------------------------------------------------------------
let g:choosewin_overlay_enable = 1

" ----------------------------------------------------------------------------
" Airline Settings
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 1
let g:arline#extensions#tabline#formatter = 'default'

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_solarized_bg='dark'

let g:airline#extensions#clock#format = '%H:%M'
" ----------------------------------------------------------------------------
" VIM Markdown
" ----------------------------------------------------------------------------
" Disabled automatically folding
let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1
" Switch off concealing
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
set cole=0
" ----------------------------------------------------------------------------
" VIM Instant Markdown (Markdown-Previewer)
" ----------------------------------------------------------------------------
" If it takes your system too much, you can specify
" let g:instant_markdown_slow = 1
" if you don't want to manually control it
" you can open this setting
" and when you open this, you can manually trigger preview
" via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

" ----------------------------------------------------------------------------
" VIM TagBar support for 'rust'
" ----------------------------------------------------------------------------
let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
let g:tagbar_type_rust = {
  \ 'ctagsbin' : '/usr/local/bin/ctags',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'v:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }

" ----------------------------------------------------------------------------
" GitGutter
" ----------------------------------------------------------------------------
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_use_location_list = 1
let g:gitgutter_sign_allow_clobber = 1
autocmd BufWritePost * GitGutter
" ----------------------------------------------------------------------------
" COLO jellybeans : If we use jellybeans as colorscheme...
" ----------------------------------------------------------------------------
let g:jellybeans_use_term_italics = 1

" ----------------------------------------------------------------------------
" COLO gruvbox : If we use gruvbox as colorscheme...
" ----------------------------------------------------------------------------
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1
let g:gruvbox_improved_strings=1

" ----------------------------------------------------------------------------
" COLO neodark : If we use neodark as colorscheme...
" ----------------------------------------------------------------------------
let g:neodark#background = '#202020'
let g:neodark#solid_vertsplit = 1
let g:neodark#terminal_transparent = 1

" ============================================================================
" MAPPINGS 
" ============================================================================
" ----------------------------------------------------------------------------
" Tab Nagivation Mappings
" ----------------------------------------------------------------------------
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" ----------------------------------------------------------------------------
" Python Mode Settings & Mappings
" ----------------------------------------------------------------------------
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>

" ----------------------------------------------------------------------------
" Navigate Windows with Meta+Arrows
" ----------------------------------------------------------------------------
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" ----------------------------------------------------------------------------
" Bookmarks
" ----------------------------------------------------------------------------
nmap Bt <Plug>BookmarkToggle
nmap Ba <Plug>BookmarkAnnotate
nmap Bs <Plug>BookmarkShowAll
nmap Bj <Plug>BookmarkNext
nmap Bk <Plug>BookmarkPrev
nmap Bc <Plug>BookmarkClear
nmap Bx <Plug>BookmarkClearAll
nmap BK <Plug>BookmarkMoveUp
nmap BJ <Plug>BookmarkMoveDown
nmap Bg <Plug>BookmarkMoveToLine
let g:bookmark_no_default_key_mappings = 1
" ----------------------------------------------------------------------------
" Various
" ----------------------------------------------------------------------------
ca w!! w !sudo tee "%"
ia <expr> dts strftime('%Y-%m-%d')

" Vim-Markbar: navigate using '`'
" Jump to marks using <Enter>,
" Move the cursor to the next mark in the markbar using n,
" Move the cursor to the previous mark in the markbar using N,
" Rename marks using r,
" Clear the name of a mark using c,
" Delete marks entirely using d.
"
" Vim-Peekabo: navigate using '"' and '@'

" ----------------------------------------------------------------------------
" Various (F-Keys)
" ----------------------------------------------------------------------------
" toggle nerdtree display
map <F1> :NERDTreeToggle<CR>
" Window Chooser
nmap <F2> <Plug>(choosewin)
nmap  -  <Plug>(choosewin)
" Tab Selector
map <F3> :TMToggle<CR>
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" NERDCommenter: Normal multi-line commenting
map <F5> <leader>cm
" NERDCommenter: Aligned commenting
map <F6> <leader>cb
" NERDCommenter: Sexy Commenting
map <F7> <leader>cs
" NERDCommenter: Uncomment 
map <F8> <leader>cu

" F9 - EMPTY

" Syntastic 
" show list of errors and warnings on the current file
nmap <F10> :Errors<CR>
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>

" Plain F11
map <F11> :CtrlPBuffer<CR>
" Show/hide invisible Chars
map <F12> :set list!<CR>

" Shift-F1
map <F13> :NERDTreeFind<CR>
nmap <leader>t :NERDTreeFind<CR>
" Shift-F2
map <F14> :RnvimrToggle<CR>
" Shift-F11
map <F23> :CtrlP<CR>
" Shift-F12
map <F24> :SyntasticCheck<CR>

" NERDCommenter: Switch Comment Style
map <End> <leader>ca

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" ----------------------------------------------------------------------------
" Argument Wrapper
" ----------------------------------------------------------------------------
nnoremap <silent> <leader>w :ArgWrap<CR>

" ----------------------------------------------------------------------------
" vim asterisk
" ----------------------------------------------------------------------------
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" If you want to set "z" (stay) behavior as default
" map *  <Plug>(asterisk-z*)
" map #  <Plug>(asterisk-z#)
" map g* <Plug>(asterisk-gz*)
" map g# <Plug>(asterisk-gz#)

" To enable keepCursor feature:
" let g:asterisk#keeppos = 1

" ----------------------------------------------------------------------------
" Silver Searcher (AG)
" ----------------------------------------------------------------------------
" Search for the word under cursor
nnoremap <Leader>s :Ags<Space><C-R>=expand('<cword>')<CR><CR>
" Search for the visually selected text
vnoremap <Leader>s y:Ags<Space><C-R>='"' . escape(@", '"*?()[]{}.') . '"'<CR><CR>
" Run Ags
nnoremap <Leader>a :Ags<Space>
" Quit Ags
nnoremap <Leader><Leader>a :AgsQuit<CR>

" ----------------------------------------------------------------------------
" Signify - jump to changed blocks
" ----------------------------------------------------------------------------
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)

" nicer colors for Signify
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" ============================================================================
" New file set title and turn to endline
" ============================================================================
autocmd BufNewFile *.sh,*.py,*.rb exec ":call SetTitle()"
function SetTitle()
    if &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")

    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
    endif
endfunction
autocmd BufNewFile * normal G

" ----------------------------------------------------------------------------
" Bookmarks Settings
" ----------------------------------------------------------------------------
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1

" ============================================================================		
" Ranger Access		
" ============================================================================		
" Ranger is set to Shift-F2		
" Make Ranger replace netrw and be the file explorer		
let g:rnvimr_ex_enable = 1		
" let g:rnvimr_pick_enable = 1		
let g:rnvimr_split_action = { '<C-t>': 'tab split', '<C-x>': 'split', '<C-v>': 'vsplit' }		

" Customize the initial layout		
let g:rnvimr_layout = { 'relative': 'editor',		
             \ 'width': float2nr(round(0.8 * &columns)),		
             \ 'height': float2nr(round(0.4 * &lines)),		
             \ 'col': float2nr(round(0.1 * &columns)),		
             \ 'row': float2nr(round(0.3 * &lines)),		
             \ 'style': 'minimal' }		

" Customize multiple preset layouts		
" '{}' represents the initial layout		
let g:rnvimr_presets = [		
             \ {'width': 0.250, 'height': 0.250},		
             \ {'width': 0.333, 'height': 0.333},		
             \ {},		
             \ {'width': 0.750, 'height': 0.500},		
             \ {'width': 0.800, 'height': 0.600}]		

" source ~/.vim/coc-a.vim

" ============================================================================
" Colorscheme Settings
" ============================================================================
set termguicolors
set background=dark
" colorscheme evokai
" colorscheme molokayo
colorscheme monokai-phoenix

autocmd bufenter *.json set conceallevel=0
autocmd vimenter *.json set conceallevel=0

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
