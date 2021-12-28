call plug#begin()

" Status line
Plug 'itchyny/lightline.vim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

Plug 'github/copilot.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Rails
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'

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
Plug 'wakatime/vim-wakatime'
Plug 'rust-lang/rust.vim'
" Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'udalov/kotlin-vim'

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
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch', 'gitstatus' ] ]
      \ },
      \ 'component_function': {
      \   'gitstatus': 'GitStatus',
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LighlineFilename',
      \ },
      \ }

function! LighlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""
let $FZF_DEFAULT_COMMAND = 'ag --hidden -f -g ""'
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
" set rnu
set nu
set mouse=nicr " mouse scrolling
set updatetime=100
set backspace=indent,eol,start

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

""""""""""""
" Colorscheme
""""""""""""
" colorscheme dracula
" colorscheme nord

set t_Co=256
set background=dark
colorscheme PaperColor


""""""""""""
" Fern
""""""""""""
augroup fern-custom
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
augroup END

let g:fern#renderer = "nerdfont"
