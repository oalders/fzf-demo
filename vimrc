call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Example without a preview window:
command! GShow
  \ call fzf#run({'source': 'git diff-tree --no-commit-id --name-only HEAD~1', 'sink': 'e'})

command! -bang GSP
  \ call fzf#run(
  \   fzf#vim#with_preview(
  \     fzf#wrap({ 'source': 'git diff-tree --no-commit-id --name-only HEAD~1' }, <bang>0)
  \   )
  \ )
