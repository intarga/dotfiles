define-command find -docstring "fuzzy-find files" -params 1 %{ edit %arg{1} }
complete-command find shell-script-candidates %{ find . -type f }
map global user f :find<space> -docstring 'fuzzy-find files'
