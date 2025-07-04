hook global BufCreate .*\.lean %{
    set-option buffer filetype lean
}
hook -group lsp-filetype-lean global BufSetOption filetype=lean %{
    set-option buffer lsp_servers %{
        [lake]
        args = ["serve"]
        root_globs = ["lakefile.lean", ".lake", ".git", ".hg"]
    }
    # semantics tokens (lsp highlighting)
    hook buffer -group semantic-tokens BufReload .* lsp-semantic-tokens
    hook buffer -group semantic-tokens NormalIdle .* lsp-semantic-tokens
    hook buffer -group semantic-tokens InsertIdle .* lsp-semantic-tokens
    #hook -once -always buffer WinSetOption filetype=.* %{
    #    remove-hooks buffer semantic-tokens
    #}
    # show evals inlaid
    lsp-inlay-diagnostics-enable buffer
    set-face buffer InlayDiagnosticInfo comment
}

# abbreviations
hook global BufSetOption filetype=lean %{
    set-option buffer snippets_auto_expand true

    set-option -add buffer snippets 'α' '\\a ' %{snippets-insert %{α${}}}
    set-option -add buffer snippets 'β' '\\b ' %{snippets-insert %{β${}}}
}
