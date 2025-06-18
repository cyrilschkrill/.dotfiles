set nu
set relativenumber
syntax on

call plug#begin()

Plug 'lervag/vimtex'
"Plug 'iamcco/markdown-preview.nvim'
Plug 'jalvesaq/Nvim-R'

Plug 'SirVer/ultisnips'

call plug#end()

" vimtex config
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" markdown-preview config
let g:mkdp_browser='qutebrowser'

" UltiSnips config
set rtp+=~/maths/
