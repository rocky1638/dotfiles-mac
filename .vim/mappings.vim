" KEY MAPPINGS 
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" MOVEMENT
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap <tab> %
vnoremap <tab> %
nnoremap ' `

" sensible things
nnoremap U <c-r>
nnoremap Y y$

" Default to improved EX mode
nnoremap Q gQ

" indent with arrow keys
nnoremap <left> <<
nnoremap <right> >>
vnoremap <Left> <gv
vnoremap <Right> >gv

nnoremap H ^
nnoremap J <C-d>
nnoremap K <C-u>

" searches center on screen
nnoremap n nzz
nnoremap N Nzz

" EASYMOTION
" f{char} to move to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map L <Plug>(easymotion-bd-jk)
nmap L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" SPLITS
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <leader>z :tab split<CR>

" BUFFERS
:nnoremap <C-X> :bdelete<CR>

" FUGITIVE GIT BINDINGS
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gtabedit :<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gp :Dispatch! git push<CR>
nnoremap <leader>gP :Dispatch! git pull<CR>

nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" LEADER COMMANDS
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>t :TableFormat<CR>
nnoremap <leader>m :MarkdownPreview<CR>
nnoremap <leader>f :Find 
nnoremap <leader>s :Scratch<CR>
nnoremap <leader>c :!ctags -R .<CR>
nnoremap <leader>d :Dispatch! 
nnoremap <leader>D :Dispatch 

" TEXT MANIPULATION
:vnoremap <C-X> <Esc>`.``gvP``P

" OTHER
nnoremap ; :
inoremap jj <ESC>
nnoremap <silent> <Space> :Buffers<CR>
nnoremap <C-p> :Files<CR>
