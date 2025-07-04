# LSP (requires installing kakoune-lsp binary)
eval %sh{kak-lsp}
lsp-enable

# LSP curly underline diagnostics
set-face global DiagnosticError default,default,red+c
set-face global DiagnosticWarning default,default,yellow+c
set-face global DiagnosticHint default,default,yellow+c

# LSP disable diagnostic flags in gutter
lsp-diagnostic-lines-disable global

# remove lsp code action indicator in modeline
set-option global lsp_auto_show_code_actions false

# override lsp modeline progress to show message, and change icon to a symbol not emoji
define-command -hidden -override lsp-handle-progress -params 6 -docstring %{
  lsp-handle-progress <token> <title> <cancelable> <message> <percentage> <done>
  Handle progress messages sent from the language server. Override to handle this.
} %{
    set-option global lsp_modeline_progress %sh{
        if ! "$6"; then
            #echo ""$kak_opt_lsp_progress_indicator""
            # More verbose alternative that shows what the server is working on.  Dont show this in
            # the modeline by default because the modeline is part of the terminal title; changing
            # that too quickly can be noisy.
            echo "$2${5:+" ($5%)"}${4:+": $4"} ⏳"
        fi
    }
}
