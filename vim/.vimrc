call plug#begin()

" Sensible is a small boilerplate .vimrc
Plug 'tpope/vim-sensible'

" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Ctrl-p is a fuzzy search thingy
Plug 'ctrlpvim/ctrlp.vim'

" Adds a nice bar at the bottom of ivm
Plug 'vim-airline/vim-airline'

" Easy motion allows for quick nagivation within the buffer
Plug 'easymotion/vim-easymotion'

" Syntactic is a syntax checker
Plug 'scrooloose/syntastic'

" Git diff in the Vim gutter
Plug 'airblade/vim-gitgutter'

call plug#end()
