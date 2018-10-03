"""""""""""""""""""
" vim-plug
" author: junegunn
" url: https://github.com/junegunn/vim-plug
"
" Brief help
" :PlugInstall [name ...] [#threads]	Install plugins
" :PlugUpdate [name ...] [#threads]	Install or update plugins
" :PlugClean[!]	Remove unused directories (bang version will clean without prompt)
" :PlugUpgrade	Upgrade vim-plug itself
" :PlugStatus	Check the status of plugins
" :PlugDiff	See the updated changes from the previous PlugUpdate
" :PlugSnapshot [output path]	Generate script for restoring the current snapshot of the plugins
"""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Editing
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'tweekmonster/braceless.vim'
"Plug 'ybian/smartim'
Plug 'junegunn/vim-easy-align'

" Browsing
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'myusuf3/numbers.vim'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
"Plug 'junegunn/fzf.vim'
"Plug 'dyng/ctrlsf.vim'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'Rykka/riv.vim', { 'for': 'rst' }
"Plug 'Lokaltog/vim-easymotion'

" Analysis
Plug 'scrooloose/syntastic'

" Syntax
Plug 'hdima/python-syntax'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'digitaltoad/vim-jade', { 'for': 'pug' }
Plug 'vim-scripts/applescript.vim'
Plug 'stephpy/vim-yaml'
Plug 'othree/yajs.vim'
Plug 'fatih/vim-go'
Plug 'chr4/nginx.vim'
Plug 'lepture/vim-jinja'
"Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
"Plug 'gabrielelana/vim-markdown'
"Plug 'posva/vim-vue'
"Plug 'darthmall/vim-vue'

" Colorscheme
Plug 'reorx/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'guns/xterm-color-table.vim'

" Misc
Plug 'embear/vim-localvimrc'
Plug 'mhinz/vim-startify'
"Plug 'sessionman.vim'

" Add plugins to &runtimepath
call plug#end()


" ============================================================================
" Plug Configs
" ============================================================================


" ----------------------------------------------------------------------------
" vim-markdown
" ----------------------------------------------------------------------------
"let g:markdown_include_jekyll_support = 0
"let g:markdown_enable_spell_checking = 0
"let g:markdown_mapping_switch_status = '<Leader>s

" ----------------------------------------------------------------------------
" braceless
" ----------------------------------------------------------------------------
autocmd FileType python,yaml BracelessEnable +indent +highlight-cc

" ----------------------------------------------------------------------------
" vim-easy-align
" ----------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ----------------------------------------------------------------------------
" NERDTree
" ----------------------------------------------------------------------------
let NERDTreeWinPos='left'
let NERDTreeWinSize=25
let NERDTreeAutoCenter=1
let NERDChristmasTree=1
let NERDTreeShowHidden=0
let NERDTreeChDirMode=1
let NERDTreeMouseMode=2
let NERDTreeIgnore = ['\.pyc$']
let g:nerdtree_tabs_open_on_gui_startup=0

" ----------------------------------------------------------------------------
" Tagbar
" ----------------------------------------------------------------------------
let g:tagbar_sort=0
let g:tagbar_left=0
let g:tagbar_width=25

" ----------------------------------------------------------------------------
" localvimrc
" ----------------------------------------------------------------------------
let g:localvimrc_ask=0

" ----------------------------------------------------------------------------
" Indent Guide
" ----------------------------------------------------------------------------
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd  guibg=darkgrey ctermbg=darkgrey
hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

" ----------------------------------------------------------------------------
" rainbow parentheses
" ----------------------------------------------------------------------------
" 'lightgray' is 'red' originally
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['lightgray',         'firebrick3'],
"    \ ]
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"
augroup rainbow_langs
    autocmd!
    autocmd FileType python,javascript,go,scala RainbowParentheses
augroup END
let g:rainbow#blacklist = [148, 176]
let g:rainbow#colors = {
\   'dark': [
\     ['yellow',  'orange1'     ],
\     ['green',   'yellow1'     ],
\     ['cyan',    'greenyellow' ],
\     ['magenta', 'green1'      ],
\     ['red',     'springgreen1'],
\     ['yellow',  'cyan1'       ],
\     ['green',   'slateblue1'  ],
\     ['cyan',    'magenta1'    ],
\     ['magenta', 'purple1'     ]
\   ],
\   'light': [
\     ['grey',        'grey'       ],
\     ['darkyellow',  'orangered3'    ],
\     ['blue',        'yellow3'       ],
\     ['darkmagenta', 'olivedrab4'    ],
\     ['red',         'green4'        ],
\     ['darkyellow',  'paleturquoise3'],
\     ['darkgreen',   'deepskyblue4'  ],
\     ['blue',        'darkslateblue' ],
\     ['darkmagenta', 'darkviolet'    ]
\   ]
\ }

" ----------------------------------------------------------------------------
" airline
" ----------------------------------------------------------------------------
"let g:airline_powerline_fonts = 0
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" ----------------------------------------------------------------------------
" powerline
" ----------------------------------------------------------------------------
let g:Powerline_symbols = 'compatible'

" ----------------------------------------------------------------------------
" CtrlSF
" ----------------------------------------------------------------------------
" https://github.com/dyng/ctrlsf.vim
" http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" ----------------------------------------------------------------------------
" neocomplete
" ----------------------------------------------------------------------------
" let g:neocomplete#enable_at_startup = 1

" ----------------------------------------------------------------------------
" syntastic
" ----------------------------------------------------------------------------
let g:syntastic_python_checkers = ['flake8']
" Error codes reference: http://flake8.readthedocs.org/en/latest/warnings.html
" E265: block comment should start with ‘# ‘
" E501: line too long (<n> characters)
" W404: 'from <module> import ``*``' used; unable to detect undefined names
" Use `# NOQA` to ignore warnings for certain lines
let g:syntastic_python_flake8_args='--ignore=E265,E501'
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript', 'php'],
                           \ 'passive_filetypes': ['rst', 'html'] }
" Not setting the loclist by default is the intended behaviour. Previously we did set it, but syntastic isnt the only plugin using loclists. See #324
let g:syntastic_always_populate_loc_list=1
let g:syntastic_javascript_checkers = ['jshint']

" ----------------------------------------------------------------------------
" ctrlp
" ----------------------------------------------------------------------------
" Ctrl-/
let g:ctrlp_map = '<c-_>'

" ----------------------------------------------------------------------------
" startify
" ----------------------------------------------------------------------------
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_custom_header = [
    \ '                                     /@',
    \ '                     __        __   /\/',
    \ '                    /==\      /  \_/\/',
    \ '                  /======\    \/\__ \__',
    \ '                /==/\  /\==\    /\_|__ \',
    \ '             /==/    ||    \=\ / / / /_/',
    \ '           /=/    /\ || /\   \=\/ /',     
    \ '        /===/   /   \||/   \   \===\',
    \ '      /===/   /_________________ \===\',
    \ '   /====/   / |                /  \====\',
    \ ' /====/   /   |  _________    /  \   \===\    THE LEGEND OF', 
    \ ' /==/   /     | /   /  \ / / /  __________\_____      ______       ___',
    \ '|===| /       |/   /____/ / /   \   _____ |\   /      \   _ \      \  \',
    \ ' \==\             /\   / / /     | |  /= \| | |        | | \ \     / _ \',
    \ ' \===\__    \    /  \ / / /   /  | | /===/  | |        | |  \ \   / / \ \',
    \ '   \==\ \    \\ /____/   /_\ //  | |_____/| | |        | |   | | / /___\ \',
    \ '   \===\ \   \\\\\\\/   /////// /|  _____ | | |        | |   | | |  ___  |',
    \ '     \==\/     \\\\/ / //////   \| |/==/ \| | |        | |   | | | /   \ |',
    \ '     \==\     _ \\/ / /////    _ | |==/     | |        | |  / /  | |   | |',
    \ '       \==\  / \ / / ///      /|\| |_____/| | |_____/| | |_/ /   | |   | |',
    \ '       \==\ /   / / /________/ |/_________|/_________|/_____/   /___\ /___\',
    \ '         \==\  /               | /==/',
    \ '         \=\  /________________|/=/    OCARINA OF TIME',
    \ '           \==\     _____     /==/',
    \ '          / \===\   \   /   /===/',
    \ '         / / /\===\  \_/  /===/',
    \ '        / / /   \====\ /====/',
    \ '       / / /      \===|===/',
    \ '       |/_/         \===/',
    \ '                      =',
    \ '',
    \ ]
