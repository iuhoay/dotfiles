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
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Markdown preview
" commands
"   :MarkdownPreview
"   :MarkdownPreviewStop
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'ap/vim-css-color'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/vim-easy-align'

call plug#end()

""""""""""""""""""""""""
" lightline.vim
""""""""""""""""""""""""
set laststatus=2
" let g:lightline = { 'colorscheme': 'wombat' }
" let g:lightline = { 'colorscheme': 'landscape' }
let g:lightline = { 'colorscheme': 'darcula' }

""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""
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
" vim config
""""""""""""""""""""""""
set mouse=nicr " mouse scrolling
vmap <C-C> "+y
set nu
colorscheme dracula
