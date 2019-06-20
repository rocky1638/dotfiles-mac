" GLOBAL VARIABLES FOR PLUGINS

let g:mkdp_markdown_css = '~/.vim/markdown.css'

let g:ranger_map_keys = 0

let g:ale_fix_on_save=1
let g:ale_lint_on_save=0
let g:ale_lint_on_text_changed=1
  let g:ale_linters = {
   \ 'javascript': ['eslint'],
   \ 'graphql': ['gqlint'],
   \ 'python': ['pylama'],
   \ }

  let g:ale_fixers = {
   \ 'javascript': ['eslint'],
   \ 'graphql': ['prettier'],
   \ 'python': ['autopep8'],
   \ }

if $VIM_USE_PRETTIER == 'true'
  let g:ale_linters.javascript = ['eslint', 'prettier']
  let g:ale_fixers.javascript = ['eslint', 'prettier']
endif

"let g:hardtime_default_on = 1
let g:hardtime_ignore_buffer_patterns = [ "NERD.*", ".git/index" ]

let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:NERDTreeNodeDelimiter="\u00a0"
let NERDTreeQuitOnOpen=1

let g:rainbow_active=1

let g:vcm_tab_complete="omni"

let g:scratch_filetype="markdown"
let g:scratch_autohide=1
let g:scratch_persistence_file="~/.vim/scratch.md"

let g:markdown_fenced_languages=['bash=sh', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'html', 'c', 'c++']
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_new_list_item_indent=2
let g:tex_conceal=""
let g:vim_markdown_math=1
let g:vim_markdown_strikethrough=1
set conceallevel=2

let g:wiki_root = '~/wiki'
let g:wiki_filetypes=['md']

let g:shades_of_purple_lightline=1
let g:lightline = {
\  'colorscheme': 'shades_of_purple',
\ 'component_function': {
\   'filename': 'LightlineFilename',
\   'gitbranch': 'LightLineGitbranch',
\   'percent': 'LightLinePercent',
\   'filetype': 'LightlineFiletype'
\   },
\ 'active': {
\   'right': [ [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'filetype' ] ],
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\ }

" Function to show relative pathnames
function! LightlineFilename()
  if winwidth(0) > 55
    let root = fnamemodify(get(b:, 'git_dir'), ':h')
    let path = expand('%:p')
    if path[:len(root)-1] ==# root
      return path[len(root)+1:]
    endif
    return expand('%')
  else
    return ""
  endif
endfunction

function! LightlineFiletype()
    return winwidth(0) > 120 ? &filetype : ''
endfunction

function! LightLineGitbranch()
  return winwidth(0) > 120 ? fugitive#head() : ''
endfunction

function! LightLinePercent()
  return winwidth(0) > 120 ? '' : (100 * line('.') / line('$')) . '%'
endfunction

let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
