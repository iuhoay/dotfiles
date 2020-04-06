set nu

call plug#begin('~/.vim/bundle')

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

call plug#end()
