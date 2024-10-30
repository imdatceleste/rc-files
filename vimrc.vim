" ============================================================================
" Author: Imdat Celeste Solak
" Version: v1.0.0
" Font Used: Iosevka Nerd Font Mono Regular, 16pt
" Editor: neovim 0.9.x

" ============================================================================
" First my plugins
" ----------------------------------------------------------------------------
" NOTE: I'm using Vim-Plug
" ============================================================================
set shortmess-=F
call plug#begin('~/.vim/plugged')

set nocompatible
" ----------------------------------------------------------------------------
" File Browsing & Selection
" ----------------------------------------------------------------------------
" Famous NERDTree
Plug 'scrooloose/nerdtree'

" Show git-status within NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" File Type Icons for NERDTree - supposed to be loaded as last one
Plug 'ryanoasis/vim-devicons'

" ----------------------------------------------------------------------------
" Searching in Files, Grepping...
" ----------------------------------------------------------------------------
" Plug 'haya14busa/vim-asterisk'
"
Plug 'gabesoft/vim-ags'

" Traces vim - highlights pattersn and ranges for Ex commands
Plug 'markonm/traces.vim'

" ----------------------------------------------------------------------------
" Syntax Highlighting/Checking tools
" ----------------------------------------------------------------------------
"  Syntastic - Syntax checking
Plug 'scrooloose/syntastic'

" Polyglott - Syntax Highlighting
" the standard vue-plugin in polyglot is horrendously slow, we switch it
" off here and use 'vim-vue-plugin'
let g:polyglot_disabled = ['vue']
Plug 'sheerun/vim-polyglot'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'Quramy/tsuquyomi'

" Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'

" Vim Language Server Support
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" Vim LSP related
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" Java/Gradle
Plug 'tfnico/vim-gradle'

" Kotlin
Plug 'udalov/kotlin-vim'

" protobuf
Plug 'yoheimuta/vim-protolint'

" GoLang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Swift
Plug 'arzg/vim-swift'
" Plug 'xavierd/clang_complete'
Plug 'hrsh7th/nvim-compe'
" C++
Plug 'rhysd/vim-clang-format'

Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" ----------------------------------------------------------------------------
" GIT & Co.
" ----------------------------------------------------------------------------
" Git Gutter
Plug 'airblade/vim-gitgutter'

" Vim-Fugitive
Plug 'tpope/vim-fugitive'

" ----------------------------------------------------------------------------
" Editing helpers
" ----------------------------------------------------------------------------
" Autoclose brackets
Plug 'Townk/vim-autoclose'

" COC - the best completion helper I could find 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Easy commenting
Plug 'preservim/nerdcommenter'

" Yankring with History		
Plug 'vim-scripts/YankRing.vim'		

" Vim Peekaboo - show my buffers
Plug 'junegunn/vim-peekaboo'

" Bookmarks
Plug 'mattesgroeger/vim-bookmarks'

" Markbar		
Plug 'yilin-yang/vim-markbar'		

" EditorConfig - makes life easier in teams
Plug 'editorconfig/editorconfig-vim'

" Vi Markdown
Plug 'plasticboy/vim-markdown'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'haya14busa/vim-asterisk'

Plug 'mileszs/ack.vim'
" ----------------------------------------------------------------------------
" PRETTIER - to auto-format files
" ----------------------------------------------------------------------------
" Prettier for vim
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" ----------------------------------------------------------------------------
" Snipmate
" ----------------------------------------------------------------------------
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" ----------------------------------------------------------------------------
" Window/Tab, etc. helpers
" ----------------------------------------------------------------------------
" Window chooser
Plug 't9md/vim-choosewin'

" ----------------------------------------------------------------------------
" Airline + Themes
" ----------------------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
" ----------------------------------------------------------------------------
" Nicer UI
" ----------------------------------------------------------------------------
" Indent Lines
Plug 'yggdroot/indentline'

" Alternative: (neovim only)
Plug 'norcalli/nvim-colorizer.lua'

" Semantic Highlighter
Plug 'jaxbot/semantic-highlight.vim'

Plug 'ap/vim-css-color'
" ----------------------------------------------------------------------------
" COLOR Schemes
" ----------------------------------------------------------------------------
Plug 'sainnhe/sonokai'
Plug 'xiyaowong/transparent.nvim'
call plug#end()

" ============================================================================
" General Settings
" ============================================================================
filetype plugin on
filetype indent on
filetype plugin indent on

" TextEdit might fail if hidden is not set.
set hidden

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
set tabstop=2
set softtabstop=2
" ... also when I do shift
set shiftwidth=2
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
" NERDTree Setttings 
" ----------------------------------------------------------------------------
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.DS_Store$', 'DerivedData$', '\.xcodeproj$', '\.xcworkspace$']
let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusPorcelainVersion=1
let g:NERDTreeWinSize=40

" ----------------------------------------------------------------------------
" Indentline
" ----------------------------------------------------------------------------
" let g:indentLine_char = '┊'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
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
" NERDCommenter
" ----------------------------------------------------------------------------
let g:NERDSpaceDelims = 1

" ----------------------------------------------------------------------------
" Syntastic Settings
" ----------------------------------------------------------------------------
" check also when just opened the file
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" If you don't need write JSX, you can use jshint.
" And eslint is slow, but not a hindrance
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = []
let g:syntastic_javascript_checkers = ['eslint']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_typescript_tsc_fname = ''

" if you don't want to put icons on the sign column (it hides the vcs status icons of signify), set this to 0
let g:syntastic_enable_signs = 1
" custom icons (enable them if you use a patched font, and enable the previous setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
" If you want to open dart files faster, comment the following
let g:syntastic_dart_checkers = ['dartanalyzer']

" Golang
let g:syntastic_golang_checkers = ['gofmt']

" Swift mode
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

" python
let g:syntastic_python_checkers = ['pylint']

" protobuf
let g:syntastic_proto_checkers = ['protolint']
" let g:syntastic_proto_protolint_args = '-fix'

" C++
let g:syntastic_cpp_checkers = ["gcc"]
let g:syntastic_cpp_compiler_options = "-std=c++20 -Wall -Wextra -Wpedantic -Wno-vla-extension -Wno-unused-parameter -I./hyperwave/include -I./node_modules/nan -I/usr/local/include/node"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

autocmd vimenter * GitGutterLineHighlightsDisable
" auto open or close NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if has("mac")
    let g:coc_node_path = '/usr/local/bin/node'
else
    let g:coc_node_path = '/home/linuxbrew/.linuxbrew/bin/node'
endif
" ----------------------------------------------------------------------------
" Python-Mode Settings
" ----------------------------------------------------------------------------
" don't use linter, we use syntastic for that
" let g:pymode_lint_on_write = 0
" let g:pymode_lint_signs = 0
" don't fold python code on open
" let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
" let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
" let g:pymode_rope_goto_definition_bind = ',d'
" let g:pymode_rope_goto_definition_cmd = 'e'

let g:python3_host_prog = "/Users/iso/Temp/bin/python3"
let g:python_host_prog = "/Users/iso/Temp/bin/python3"

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
" let g:vim_markdown_folding_disabled=1
" LeTeX math
let g:vim_markdown_math=1
" Highlight YAML frontmatter
let g:vim_markdown_frontmatter=1
" Switch off concealing
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
set cole=0

" ----------------------------------------------------------------------------
" GitGutter
" ----------------------------------------------------------------------------
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_use_location_list = 1
let g:gitgutter_sign_allow_clobber = 1
autocmd BufWritePost * GitGutter
map GL :GitGutterLineHighlightsToggle<CR>
map <C-Down> <Plug>(GitGutterNextHunk)
imap <C-Down> <Plug>(GitGutterNextHunk)
map <C-Up> <Plug>(GitGutterPrevHunk)
imap <C-Up> <Plug>(GitGutterPrevHunk)
map = <Plug>(GitGutterPreviewHunk)

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
map <C-A-Right> :tabn<CR>
imap <C-A-Right> <ESC>:tabn<CR>
map <C-A-Left> :tabp<CR>
imap <C-A-Left> <ESC>:tabp<CR>

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

" NERDCommenter: Switch Comment Style
map <End> <leader>ca

" F9 - EMPTY

" Syntastic 
" show list of errors and warnings on the current file
nmap <F10> :Errors<CR>
nmap <leader>e :Errors<CR>
" turn to next or previous errors, after open errors list
nmap <leader>n :lnext<CR>
nmap <leader>p :lprevious<CR>

" Show/hide invisible Chars
map <F11> :set list!<CR>
" Re-order imports in dart files
map <F12> :DartOrganizeImports<CR>

" Shift-F1
map <F13> :NERDTreeFind<CR>
nmap <leader>t :NERDTreeFind<CR>
" Shift-F2

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

" ----------------------------------------------------------------------------
" dart-plugin settings
" ----------------------------------------------------------------------------
let g:dart_style_guide = 2
let g:dartfmt_options = [' --line-length 80']
let g:dart_format_on_save = 1
let g:lsc_auto_map = v:true
let g:lsc_dart_sdk_path = "/Users/iso/Development/flutter"
let g:lsc_server_commands = {'dart': 'dart_language_server'}
"
" SourceKit-LSP configuration
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif

" If you have problems with above lines, you can also use:
" autocmd BufWritePre *.dart execute "DartFmt -l 80 --fix"
" https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.vim

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" autocmd BufWritePre *.proto execute "protolint lint -fix"
" ============================================================================
" Colorscheme Settings
" ============================================================================

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
autocmd FileType swift setlocal 
" autocmd vimenter * ClangFormatAutoDisable

" autocmd bufenter *.c,*.cc,*.cpp,*.m,*.h ClangFormatAutoEnable
autocmd bufenter *.xml SyntasticToggle

autocmd bufenter *.json set conceallevel=0
autocmd vimenter *.json set conceallevel=0
autocmd FileType dart setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType kotlin setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType swift setlocal omnifunc=lsp#complete sw=2 ts=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd vimenter *.ts setlocal expandtab sw=2 ts=2 softtabstop=2
autocmd bufenter *.ts setlocal expandtab sw=2 ts=2 softtabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 softtabstop=2
set termguicolors
set background=dark
let g:sonokai_enable_italic=1
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai
set colorcolumn=80
