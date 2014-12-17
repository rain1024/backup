set nocompatible              " be iMproved, required
filetype off                  " required

set nu
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4

" ========================================
"            Shortcut 
" ========================================

" save file
:inoremap <c-s> <c-o>:Update<CR><CR>

" ========================================
"            Vundle
" ========================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle
Plugin 'gmarik/Vundle.vim'
" =========================================

" Plugins
Plugin 'L9'

" =========================================
"            File Explore
" =========================================
Plugin 'scrooloose/nerdtree'
" open NERDTree automatically when vim starts up
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" make NERDTree always open on the right side
let g:NERDTreeWinPos = "right"
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" let the CWD is changed whenever the tree root is changed 
let g:NERDTreeChDirMode = 2
" give shortcut
nmap <silent> <F3> :NERDTreeToggle<CR>

Plugin 'kien/ctrlp.vim'
" begin finding a root from the current working directory outside of CtrlP
" let g:ctrlp_working_path_mode = 'c'
" Exclude files or directories using Vim's 
set wildignore+=*/tmp/*,*.swp,*.zip,*/bower_components/*,*/_site/*,*/node_modules/*

" =====================================
"            Autocomplete 
" =====================================

Plugin 'Shougo/neocomplcache.vim'

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case =1
let g:neocomplcache_look_buffer_name_pattern = '\*ku*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default':    '',
    \ 'vimshell':   $HOME.'/.vimshell_hist',
    \ 'scala':      $HOME.'/.vim/bundle/vim-scala/dict/scala.dict',
    \ 'c':          $HOME.'/.vim/dict/c.dict',
    \ 'cpp':        $HOME.'/.vim/dict/cpp.dict',
    \ 'java':       $HOME.'/.vim/dict/java.dict',
    \ 'javascript': $HOME.'/.vim/dict/javascript.dict',
    \ 'lua':        $HOME.'/.vim/dict/lua.dict',
    \ 'ocaml':      $HOME.'/.vim/dict/ocaml.dict',
    \ 'perl':       $HOME.'/.vim/dict/perl.dict',
    \ 'php':        $HOME.'/.vim/dict/php.dict',
    \ 'scheme':     $HOME.'/.vim/dict/scheme.dict',
    \ 'vim':        $HOME.'/.vim/dict/vim.dict'
    \ }

" ======================================
"            Quick Typing 
" ======================================
Plugin 'tpope/vim-surround'
Plugin 'tComment'
Plugin 'Townk/vim-autoclose'

Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Tell Neosnippet about custom snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-rain-snippets/snippets'
" Plugin 'Valloric/YouCompleteMe'
" Caution: YouCompleteMe doesn't work with neosnippet

" ======================================
"            Scala 
" ======================================
Plugin 'derekwyatt/vim-scala'

" ======================================
"            HTML 
" ======================================
Plugin 'mattn/emmet-vim'

" ======================================
"            Syntax Highlight
" ======================================
hi link markdownError Normal

" ======================================
"                                  Scaffolding 
" ======================================
Plugin 'rain1024/scaffolding'

" ======================================
"             Vundle
" ======================================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ======================================
"             Vundle Help
" ======================================
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

