# tree-sitter (requires installing kak-tree-sitter and ktsctl binaries)
# once you have the binaries installed, you also need to load grammars
# with `ktsctl sync <language>`
eval %sh{ kak-tree-sitter -dks --init $kak_session }
