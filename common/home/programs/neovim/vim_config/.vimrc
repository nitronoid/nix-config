" Force neovim
set nocompatible

" List of configuration files
let configs = [
\   'navigation.vim',
\   'language.vim',
\   'search.vim',
\   'backup.vim',
\   'providers.vim',
\   'line.vim',
\   'clipboard.vim',
\   'color_scheme.vim',
\   'syntax_highlighting.vim',
\   'formatting.vim'
\]

" Configuration directory
let s:vim_home = '${HOME}/.vim/config'

" Source all configuration files
for f in configs
  exec 'source '.s:vim_home.'/'.f
endfor

