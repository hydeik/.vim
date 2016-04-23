"=============================================================================
" Description: haya14busa's vimrc
" Author: haya14busa
" URL: https://github.com/haya14busa/.vim
" License: MIT license
"=============================================================================

let s:rc_base_dir = fnamemodify(expand('<sfile>'), ':p:h') . '/rc/'

let s:vimrc = fnameescape(expand('<sfile>'))
command! ReloadVimrc :exe 'source ' s:vimrc

" @param {string} path 'relative to s:rc_base_dir(~/.vim/rc/)'
function! s:source_rc(path) abort
  execute 'source' fnameescape(s:rc_base_dir . a:path)
endfunction

call s:source_rc('dein.vim')
call s:source_rc('basic.vim')
