if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal iskeyword=@,48-57,_

setlocal commentstring=--%s

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

setlocal matchpairs+=⟨:⟩
setlocal matchpairs+=<:>
