"
" plugins.vim
" plugins powered by vim-plug
"

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/autoload')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

call plug#begin('~/.vim/plugged')


" # git stuff
" git commands
Plug 'tpope/vim-fugitive'
" git change indicator
Plug 'airblade/vim-gitgutter'


" # features
" colors
Plug 'arcticicestudio/nord-vim'
" better terminal integration
Plug 'wincent/terminus'
" statusbar
Plug 'itchyny/lightline.vim'
" multiple cursor selection
Plug 'terryma/vim-multiple-cursors'
" smooth scroll
Plug 'terryma/vim-smooth-scroll'
" advanced substitution
Plug 'tpope/vim-abolish'
" tmux integration
Plug 'christoomey/vim-tmux-navigator'
Plug 'melonmanchan/vim-tmux-resizer'

" fuzzy file finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" autocompletion
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" php autocompletion
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

" snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


" # programming
" commenter
Plug 'tomtom/tcomment_vim'
" align blocks of text
Plug 'junegunn/vim-easy-align'
" syntax checker
Plug 'w0rp/ale'
" replace surrounding quotes/parenthesis
Plug 'tpope/vim-surround'
" enable . support for plugins
Plug 'tpope/vim-repeat'

" # language-specific
" color previewer for css
Plug 'gorodinskiy/vim-coloresque'
" improved js indent and syntax highlighting
Plug 'pangloss/vim-javascript'
" html5 omnicomplete and syntax
Plug 'othree/html5.vim'
" vue syntax highlighting
Plug 'posva/vim-vue'
" svelte syntax highlighting
Plug 'burner/vim-svelte'
" dart syntax highlighting
Plug 'dart-lang/dart-vim-plugin'
" blade syntax highlighting
Plug 'jwalton512/vim-blade'

call plug#end()
