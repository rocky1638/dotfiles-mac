augroup prisma_ft
  autocmd!

  " use graphql highlighting on prisma files
  autocmd BufNewFile,BufRead *.prisma set syntax=graphql
augroup END

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
