filetype plugin indent on
set nofoldenable
set nohidden
set ruler
set rnu nu
set visualbell
syntax enable
command! ToggleSpell setlocal spell! spelllang=en_us
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set wrap
set incsearch
set ignorecase
set nobackup
set nowritebackup
call plug#begin('~/.vim/plugged')
Plug 'preservim/vim-markdown'
Plug 'lervag/vimtex'
Plug 'dhruvasagar/vim-table-mode'
Plug 'skanehira/preview-markdown.vim'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'fxn/vim-monochrome'
call plug#end()

autocmd FileType markdown nnoremap <silent> <Leader>t :TableModeToggle<CR>
set cursorline
nnoremap <C-b> :NERDTreeToggle<CR>
inoremap jj <Esc>
nnoremap <Space> :
vnoremap <Space> :
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap k gk
nnoremap j gj
nnoremap H 0
nnoremap L $
onoremap H 0
vnoremap L 0
onoremap H $
vnoremap L $

colorscheme hemisu
set background=dark
nnoremap <F5> :set number! relativenumber!<CR>


" Enable statusline
set laststatus=2
set noshowmode  " Hide default mode indicator set statusline=

" Left side (true black background)
set statusline+=%#StatusMode#                     " Mode highlight
set statusline+=\ %{LightlineMode()}\             " Full mode name
set statusline+=%#StatusSep#│%#StatusMain#\       " Separator
set statusline+=%f                                " Filename
set statusline+=%m                                " Modified [+]
set statusline+=%r                                " Read-only [RO]

" Right side (true black background)
set statusline+=%=                                " Right-align
set statusline+=%#StatusMain#%y%#StatusSep#\ │\   " Filetype
set statusline+=%#StatusMain#%l:%c%#StatusSep#

" Mode display function (returns full mode names)
function! LightlineMode()
  return toupper(mode() ==# 'n' ? 'NORMAL' :
               \ mode() ==# 'i' ? 'INSERT' :
               \ mode() ==# 'v' ? 'VISUAL' :
               \ mode() ==# 'R' ? 'REPLACE' :
               \ mode() ==# 't' ? 'TERMINAL' :
               \ mode() ==# 'c' ? 'COMMAND' :
               \ mode())
endfunction

" True black color scheme (pitch black background)
highlight StatusMode  ctermbg=16 ctermfg=149 guibg=#000000 guifg=#B1D631
highlight StatusMain  ctermbg=16 ctermfg=255 guibg=#000000 guifg=#ffffff
highlight StatusSep   ctermbg=16 ctermfg=244 guibg=#000000 guifg=#808080
highlight StatusLine  ctermbg=16 ctermfg=255 guibg=#000000 guifg=#ffffff
highlight StatusLineNC ctermbg=16 ctermfg=238 guibg=#000000 guifg=#444444


