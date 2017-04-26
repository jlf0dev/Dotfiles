" Dein.vim for plugin management
" Required
set runtimepath+=/home/jlf0/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required
if dein#load_state('/home/jlf0/.config/nvim/dein')
  call dein#begin('/home/jlf0/.config/nvim/dein')

  " Let dein manage dein
  " Required
  call dein#add('/home/jlf0/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('edkolev/promptline.vim')
  call dein#add('edkolev/tmuxline.vim')

  call dein#add('scrooloose/nerdtree')
  call dein#add('christoomey/vim-tmux-navigator')

  call dein#add('sbdchd/neoformat')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')

  call dein#add('neomake/neomake')

  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required
  call dein#end()
  call dein#save_state()
endif

" Required
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" --PLUGINS--
" Neoformat using yapf
let g:neoformat_python_yapf = {
            \ 'exe': 'yapf',
            \ 'stdin': 1,
            \ }
let g:neoformat_enabled_python = ['yapf']

" Deoplete using jedi
let g:deoplete#enable_at_startup = 1
" remove preview of suggestions
set completeopt-=preview

" Neomake run on read or write of buffer
autocmd! BufWritePost,BufReadPost * Neomake

" Fzf set colors 
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'PreProc'],
  \ 'fg+':     ['fg', 'airline_z', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'airline_z', 'NONE'],
  \ 'hl+':     ['fg', 'Todo'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'PmenuSel'],
  \ 'pointer': ['fg', 'PmenuSel'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" Turn on relative and regular line numbers
set rnu
set nu


" Set background to dark for syntax highlighting
set background=dark
" Change color of line numbers to grey
highlight LineNr ctermfg=grey
" Change color of comments to dark grey
highlight Comment ctermfg=243
" Turn off bolding on identifers
highlight Identifier cterm=NONE
" Change TODO color to purple
highlight TODO ctermbg=NONE ctermfg=207
" Change Error color to red
highlight Error ctermbg=NONE ctermfg=203
" Change ErrorMsg fg color to black
highlight ErrorMsg ctermfg=black
" Change deopletes suggestion box to blue
highlight Pmenu ctermbg=111 
highlight PmenuSel ctermbg=69 ctermfg=black
" Change parenthesis color to purple
highlight MatchParen ctermbg=NONE ctermfg=141
" Neomake colors
highlight SignColumn ctermbg=NONE
highlight NeomakeWarningSignDefault ctermbg=NONE
highlight NeomakeErrorSign ctermfg=160 ctermbg=NONE


" Vim-airline
" -Use powerline fonts
let g:airline_powerline_fonts = 1
" -Remove orange triangles at end
let g:airline_skip_empty_sections = 1
" -Set theme
let g:airline_theme='bubblegum'

" Promptline from airline
let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#git_status() ]}


" Key Mapping
" nore = non-recursive mapping
" -Exit insert mode with jj (<C-[> is used to avoid going down a line)
inoremap jj <C-[>
" -Unhighights the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>
" -FZF toggle
noremap <C-p> :FZF<CR>


" Python development
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
