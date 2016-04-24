set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-2
set nocompatible
filetype off

" Vundle, the plug-in manager for Vim
" https://github.com/gmarik/vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'k-takata/matchit.vim'
" Plugin 'epeli/slimux'

" Syntax color
" Plugin 'tpope/vim-vividchalk'
Plugin 'nanotech/jellybeans.vim'

" Dart ====
" Plugin 'dart-lang/dart-vim-plugin'
" Plugin 'miyakogi/vim-dartanalyzer'

" Rust ====
" Plugin 'rust-lang/rust.vim'
" Plugin 'cespare/vim-toml'

" Object Pascal
" Plugin 'boeckmann/vim-freepascal'

" Fish shell syntax ====
Plugin 'dag/vim-fish'

" JSX ES6
Plugin 'mxw/vim-jsx'

Plugin 'scrooloose/syntastic'

" Ruby ====
" original repos on github
" Plugin 'astashov/vim-ruby-debugger'
" Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-bundler'
" Plugin 'stefanoverna/vim-i18n'
"Plugin 'tpope/vim-rake'
"Plugin 'tpope/vim-repeat'
"Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'KurtPreston/vim-autoformat-rails'
"  Plugin 'ngmy/vim-rubocop'
"  Plugin 'thoughtbot/vim-rspec'
"  Plugin 'jgdavey/vim-blockle' " convert {} to do/end block (leader+b)

"" HTML/CSS/JS
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
" zen coding
Plugin 'mattn/emmet-vim'

"## Dlang
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'idanarye/vim-dutyl'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()
" End vundle

" Plugin vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Plugin syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin on
filetype plugin indent on     " required!

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set scrolloff=3
set directory=/tmp
set nobackup
set noswapfile
set nowritebackup
set history=500
set undolevels=200
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
 " set hlsearch
endif

" Vypnout/zapnout highlighting výsledků hledání
nnoremap <F3> :set hlsearch!<CR>

" set default font for powerline
if (has("gui_running"))
  set guifont=Hack\ 10
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

    " Avoid trailing whitespace
    autocmd FileType ruby,eruby,scss,yaml,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif

  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Paste
" You can temporarily switch to “paste mode”, simply by setting the following option:
set pastetoggle=<F2>

" Always display the status line
set laststatus=2

" , is the leader character
let mapleader = "\<Space>"

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

map <Leader>w<left> <C-w><left>
map <Leader>w<right> <C-w><right>
map <Leader>w<up> <C-w><up>
map <Leader>w<down> <C-w><down>
map <Leader>w<Leader> <C-w>w
map <Leader>wv <C-w>v
map <Leader>ws <C-w>s
map <Leader>wT <C-w>T
map <Leader>wq <C-w>q

" NerdTree
silent! nmap <Leader>t :NERDTreeToggle<CR>
silent! map <Leader>f :NERDTreeFind<CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" MORE NATURAL SPLIT OPENING
set splitbelow

" No Help, please
nmap <F1> <Esc>

" Display extra whitespace
set list listchars=tab:»·,trail:·

colorscheme jellybeans

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full

" case only matters with mixed case expressions
set ignorecase
set smartcase

" expand region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" ident
map   <silent> <F5> mmgg=G`m^
imap  <silent> <F5> <Esc> mmgg=G`m^

" Save with ctrl-s
noremap <silent> <C-s>          :update<CR>
vnoremap <silent> <C-s>         <C-C>:update<CR>
inoremap <silent> <C-s>         <Esc>:update<CR>

" Replace text in selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Change double quotes to postrophes
nmap <silent> '' cs"'
nmap <silent> "" cs'"

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
      \ "\<lt>C-n>" :
      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" code folding
set foldmethod=syntax
set foldnestmax=5
" rozfoldit při otevření bufferu
autocmd BufRead * exe "normal zR"

" Zobrazit čísla řádků
set number

" Odstranit prodlevu při shift-O apod.
set timeoutlen=1000 ttimeoutlen=0

" Shift-Enter - new line from insinde previous line
inoremap <C-CR> <Esc>o
" Ctrl-Enter new line above current line from current line
inoremap <S-CR> <Esc>O

" Kopírování/vkládání do systémový schránky
inoremap <C-S-V> <C-R>+
nnoremap <C-S-V> "+p
vnoremap <C-S-C> "+y

" Include ruby settings
if filereadable($HOME . "/.vim/ruby.vim")
  source $HOME/.vim/ruby.vim
endif

" keep last to everride scheme colors
highlight ColorColumn ctermbg=darkred guibg=darkred
call matchadd('ColorColumn', '\%81v', 100)

" Vypnout syntastic pro js
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": [],
        \ "passive_filetypes": ["eruby", "javascript", "javascript.jsx"] }

" vim-snippets, ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
