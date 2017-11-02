syntax enable
colorscheme monokai

"load all the plugins
execute pathogen#infect()
syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"gundo custom settings
let g:gundo_preview_bottom=1
let g:gundo_auto_preview=1

" allows cursor as a line/block in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"leader is ',' instead of '\'
let mapleader=","
"leader for emmet expansion
let g:user_emmet_leader_key='<C-i>'

"let stuffNThings = 55

" re-map CTRL-x CTRL-o to <leader> a (auto-complete)
inoremap <leader>a <C-x><C-o>

" re-map 'jk' to <esc>
inoremap jk <esc>

"toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"map <leader>f to start instering at first character
nnoremap <leader>f ^i

"show line numbers
set number
highlight LineNr ctermfg=grey ctermbg=black

"show command in bottom bar
set showcmd

"visual autocomplete for command menu
set wildmenu

"search as characters are entered
set incsearch
"highlight matches
set hlsearch
"turn of serach highlight
nnoremap <leader><space> :nohlsearch<CR>
"search default is case insensative
set ic

"tComment plugin remap CTRL+_ CTRL+_ to <leader>c
map <leader>c <C-_><C-_>

"highlight bad/trailing whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.rb match BadWhitespace /\s\+$/

"set the scroll buffer (lines shown above/below cursor)
set scrolloff=5

"working with splits
set splitright
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"set spellcheck on by default"
"set spell

"set tab auto-indentation to spaces
set expandtab
set shiftwidth=2
set softtabstop=2

"tab navigation to resemble Vimium(ish)
nnoremap J gT
nnoremap K gt
nnoremap <C-t> :tabnew<CR>:edit 
nnoremap <C-w> :tabclose<CR>
nnoremap <leader>j :tabmove-1<CR>
nnoremap <leader>k :tabmove+1<CR>

"Allow saving of files as sudo when opened a read-only file without sudo
"per:
"http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %
