call plug#begin('~/.vim/bundle')

" Status line
Plug 'itchyny/lightline.vim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Rails
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'

" Snippet
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Markdown preview
" commands
"   :MarkdownPreview
"   :MarkdownPreviewStop
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'ap/vim-css-color'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wakatime/vim-wakatime'
Plug 'rust-lang/rust.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

""""""""""""""""""""""""
" gitgutter
""""""""""""""""""""""""
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

""""""""""""""""""""""""
" lightline.vim
""""""""""""""""""""""""
set laststatus=2
" let g:lightline = { 'colorscheme': 'wombat' }
" let g:lightline = { 'colorscheme': 'landscape' }
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch', 'gitstatus' ] ]
      \ },
      \ 'component_function': {
      \   'gitstatus': 'GitStatus',
      \   'gitbranch': 'gitbranch#name',
      \ },
      \ }


""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
map <C-p> :Files<CR>

""""""""""""""""""""""""
" dracula
" not support italics
""""""""""""""""""""""""
let g:dracula_italic = 0
let g:dracula_colorterm = 0

""""""""""""""""""""""""
" vim-easy-align
""""""""""""""""""""""""
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)

""""""""""""""""""""""""
" vim-gitgutter
""""""""""""""""""""""""
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

""""""""""""""""""""""""
" gv
""""""""""""""""""""""""
nmap <Leader>gv :GV<CR>

""""""""""""""""""""""""
" vim config
""""""""""""""""""""""""
vmap <C-C> "+y
set nu
set mouse=nicr " mouse scrolling
set updatetime=100
set backspace=indent,eol,start
" colorscheme dracula
colorscheme nord

""""""""""""""""""""""""
" ruby
""""""""""""""""""""""""
au BufRead,BufNewFile *.rabl setf ruby

""""""""""""""""""""""""
" rust
""""""""""""""""""""""""
let g:rustfmt_autosave = 1

""""""""""""""""""""""""
" EditorConfig
""""""""""""""""""""""""
let g:EditorConfig_preserve_formatoptions = 1
let g:EditorConfig_max_line_indicator = 'fill' " line,fill,exceeding,none
