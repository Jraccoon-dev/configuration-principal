"Principal config

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set rnu
set tabstop=2
set autoindent
set autowrite
set wrap
set hidden
set nobackup
set nowritebackup


"Pluggins
call plug#begin('~/.vim/plugged')

"Themes
Plug 'morhetz/gruvbox'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'windwp/nvim-autopairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

"Barstatus
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Syntax
Plug 'sheerun/vim-polyglot'

"Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"test
Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test' Deprecate
Plug 'voldikss/vim-floaterm'

"git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'jreybert/vimagit'

"File manager
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

"Settings nvim
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"Config Theme 
colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"

"Mapping leader keys
let mapleader=" "

"Config shortcut keys
nmap <Leader>w :w!<CR>
nmap <Leader>q :q!<CR>

"Config Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"Config NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

"Config Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

"Config CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'   
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 


"Config VimAGit
nmap <Leader>mg :Magit<CR>

"Config autocomplete
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP

"Config Fzf
nmap <Leader>ff :Files<CR>
nmap <Leader>gff :GFiles<CR>
nmap <Leader>cmm :Commits<CR>

"Config Coc-vim
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-git', 'coc-html', 'coc-angular', 'coc-eslint', 'coc-flutter', 'coc-highlight', 'coc-html-css-support', 'coc-java', 'coc-python', 'coc-stylelintplus', 'coc-snippets', 'coc-sql', 'coc-tabnine', 'coc-webview']
noremap <Leader>ccs :CocSearch
nmap <Leader>ccd <Plug>(coc-definition)
nmap <Leader>cctd <Plug>(coc-type-definition)
nmap <Leader>cci <Plug>(coc-implementation)

"Config Ranger-vim	
let g:ranger_map_keys = 0
nmap <Leader>rg :Ranger<CR> 
nmap <Leader>rgt :RangerNewTab<CR>

"Config Vim-Floaterm
let g:floaterm_position = 'bottomright'
nmap <Leader>ft :FloatermNew<CR>
nmap <Leader>ftt :FloatermToggle<CR>
nmap <Leader>ftc :FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>

"Config denite-vim
" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
      \ denite#do_map('do_action')
nnoremap <silent><buffer><expr> d
      \ denite#do_map('do_action', 'delete')
nnoremap <silent><buffer><expr> p
      \ denite#do_map('do_action', 'preview')
nnoremap <silent><buffer><expr> <C-v>
      \ denite#do_map('do_action', 'vsplit')
nnoremap <silent><buffer><expr> <C-x>
      \ denite#do_map('do_action', 'split')
nnoremap <silent><buffer><expr> <Esc>
      \ denite#do_map('quit')
nnoremap <silent><buffer><expr> i
      \ denite#do_map('open_filter_buffer')
nnoremap <silent><buffer><expr> <Space>
      \ denite#do_map('toggle_select').'j'
endfunction

