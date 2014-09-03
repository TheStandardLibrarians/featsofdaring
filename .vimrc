if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

" CtrlP OS-X Menu remapping
"if janus#is_plugin_enabled('ctrlp') && has("gui_macvim")
"  macmenu &File.New\ Tab key=<D-S-t>
"endif

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

set nu!
set paste
set lbr!

set cursorline
set cursorcolumn

setlocal ts=2 sts=2 sw=2 expandtab
set expandtab

set list
set listchars=trail:.
set textwidth=72
set colorcolumn=72

let g:netrw_liststyle=3
autocmd FileType ruby map _s  !ruby -c<CR>
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
                                                              1,1           Top


