"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'flrnd/candid.vim'
Plug 'wadackel/vim-dogrun'
Plug 'yuqio/vim-darkspace'
Plug 'doums/darcula'
Plug 'gmoe/vim-eslint-syntax'
Plug 'flrnprz/plastic.vim'
Plug 'joshdick/onedark.vim'
Plug 'voldikss/vim-floaterm'

"JSX format"
Plug 'maxmellon/vim-jsx-pretty'

"Format PHP
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}

"Plug 'alvan/vim-closetag'
"Plug 'townk/vim-autoclose'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let maplocalleader = ","
set updatetime=200
set timeoutlen=1000 ttimeoutlen=50
set history=1000
set undofile
set undolevels=100
set undoreload=1000
set nobackup
set nowb
set nowrap
set noswapfile

" interface 
set so=8
set number
set numberwidth=4
set signcolumn=yes
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=161
set cursorline
hi CursorLine ctermbg=235
"set colorcolumn=161

" folding
set foldmethod=indent
set foldnestmax=2
set nofoldenable
set foldlevel=2

" completion
set cmdheight=1
set pumheight=8
set completeopt-=preview

" last line history
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap! <C-h> <Left>
noremap! <C-j> <Down>
noremap! <C-k> <Up>
noremap! <C-l> <Right>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NVIM Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard^=unnamed,unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if exists('+termguicolors')
  "let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"set background=dark
"colorscheme github

"call github_colors#togglebg_map('<f5>')

 "important:
set termguicolors
set background=dark
syntax on
"colorscheme plastic
colorscheme onedark

" Lightline
"let g:lightline = { 'colorscheme': 'plastic' }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editor Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_leader="\\"
let g:VM_theme = 'codedark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = "deus"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_max_signs=1000
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mark Down Preview Server
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_autoscroll = 1
let g:instant_markdown_port = 8888

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', 'vendor']
let g:NERDTreeStatusline = ''

"Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
autocmd FileType nerdtree setlocal signcolumn=no
"autocmd VimEnter * FloatermNew nnn


set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shortmess+=c
let g:coc_global_extensions = [
      \'coc-tsserver@1.6.7',
      \'coc-clangd',
      \'coc-python',
      \'coc-go',
      \'coc-emmet',
      \'coc-html',
      \'coc-css',
      \'coc-prettier@1.1.20',
      \'coc-highlight@1.2.7',
      \'coc-json@1.3.2',
      \'coc-docker',
      \'coc-markdownlint',
      \'coc-sh',
      \'coc-vetur',
      \]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
"inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
"inorem<SID>check_ap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> ac <Plug>(coc-codeaction)
nmap <leader> qf <Plug>(coc-fix-current)

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
>


"""""""""""""""""""""""""""""""""""""""""""""""
"close-tag config
"""""""""""""""""""""""""""""""""""""""""""""""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => FloatTerm
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"hi Floaterm guibg=#414141
"hi FloatermBorder guibg=#414141 guifg=#f1f1f1
let g:floaterm_opener = "tabe"
let g:floaterm_autoclose = 2
let g:floaterm_width = 0.8
let g:floaterm_height = 0.6
let g:floaterm_wintype = "float"

nnoremap <silent> <leader>d :FloatermNew nnn -deH<cr>
nnoremap <silent> <leader>r :FloatermNew rg --follow -g "!{.git,node_modules,vendor}/*" . 2> /dev/null<cr>
nnoremap <silent> <leader>g :FloatermNew git log --graph --decorate --oneline<cr>
nnoremap <silent> <leader>f :FloatermNew fzf<cr>
"
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Prettier
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Format by cmd + f
nnoremap <A-f> :Prettier<CR>

nnoremap <leader>1 1gt<cr>
nnoremap <leader>2 2gt<cr>
nnoremap <leader>3 3gt<cr>
nnoremap <leader>4 4gt<cr>
nnoremap <leader>5 5gt<cr>
nnoremap <leader>6 6gt<cr>
nnoremap <leader>8 8gt<cr>
nnoremap <leader>9 9gt<cr>
