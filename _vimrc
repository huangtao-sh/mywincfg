set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set fileencoding=utf-8
set fileencodings=utf-8,gbk,utf-16,big5
set encoding=gbk

set guifont=YaHei_Consolas_Hybrid:h12
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set nu
set ai
set si
set nobackup
nmap <F12> :!python %<CR>
nmap <F5> :!python D:\huangtao\python\platform\workmgr.pyw<CR>
cd ~/python
filetype plugin on   
setlocal omnifunc=python3complete#Complete

let g:pydiction_location = 'C:\Program Files\Vim\vim74\complete-dict'  
let g:pydiction_menu_height = 20 

set foldmethod=indent

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


