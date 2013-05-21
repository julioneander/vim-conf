set background=dark

set hlsearch
" Use incremental searching
set incsearch

" Set standard setting for PEAR coding standards
set tabstop=2
set shiftwidth=2

" Auto expand tabs to spaces
set expandtab

" Auto indent after a {
set autoindent
set smartindent

" Linewidth to endless
set textwidth=0

" Do not wrap lines automatically
set nowrap

" Show line numbers by default
set number

" Jump 5 lines when running out of the screen
set scrolljump=5

" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=3

" Map <CTRL>-B to run PHP parser check
"noremap <C-B> :!php -l %<CR>

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
"set dictionary-=/home/julio/funclist.txt dictionary+=/home/julio/funclist.txt
" Use the dictionary completion
"set complete-=k complete+=k

" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
"function InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction

" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>

set list
set listchars=tab:→\ ,trail:·
set ignorecase                  " caseinsensitive searches
set showmode                    " always show command or insert mode
set ruler                      " show line and column information
set showmatch                  " show matching brackets
set showcmd
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start
set ttyfast
set lazyredraw

" VI compatible options
set cpoptions+=$

syntax on

" Custom mappings
map <ESC><F2> :NERDTree<CR>
map <C-l> :% s/\s\+$//g<CR>

set title
set smartcase
set smarttab

" Undo normal mappings
nnoremap Q <nop>
nnoremap K <nop>

set virtualedit=block " Freely move with visual block edit mode
set wildmode=longest,list " Bash completion

colorscheme ir_black_custom

if filereadable("/home/julio/Repos/powerline/powerline/bindings/vim/plugin/powerline.vim") && &t_Co == 256
  " Enable Powerline
  set rtp+=/home/julio/Repos/powerline/powerline/bindings/vim
  set laststatus=2 " Always display the statusline in all windows
  set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
endif
