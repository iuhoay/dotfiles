set nu

call plug#begin('~/.vim/bundle')

" Status line
Plug 'itchyny/lightline.vim'
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat' }

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map <C-p> :Files<CR>

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


call plug#end()
