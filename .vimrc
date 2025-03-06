set number                      " display line counts
set ruler                       " display cursol position
set list                        " display invisible character
set showmatch                   " locate the open brackets
set autoindent                  " autoindent
set modeline                    " modeline
set backspace=2                 " delete special character
set whichwrap=b,s,h,l,<,>,[,]   " move cursol between line begin and end
set undolevels=100              " undolevel
set formatoptions=q             " no auto line break

" search setting
set hlsearch
set wrapscan

" encoding
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac

" each file setting
filetype on
filetype indent on

" expand tab setting
set noexpandtab tabstop=2 softtabstop=0 shiftwidth=0
autocmd FileType python set expandtab ts=4 sts=0 sw=4
autocmd FileType yaml set expandtab

" Key maps
let mapleader = "\<Space>"
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nmap # <Space><Space>:%s/<C-r>///g<LEFT><LEFT>
nnoremap x "_x
nnoremap s "_s
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap < <><LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap (<CR> ()<LEFT><CR><CR><Up><Tab>
inoremap [<CR> []<LEFT><CR><CR><Up><Tab>
inoremap {<CR> {}<LEFT><CR><CR><Up><Tab>

