:syn match logDate /Gib/

":syn match logDate /^\d\{4}-\d\{2}-\d\{2}/ nextgroup=logTime skipwhite
hi def logDate ctermbg=red guibg=green ctermfg=Green guifg=white

:syn match metaData /\({\|}\)/
hi def metaData ctermbg=blue ctermfg=black

