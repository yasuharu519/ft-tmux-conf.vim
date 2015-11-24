" syntax for tmux.conf
"

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-

syn match tmuxBindKey '\(\^\|C-\|M-\)\?\(Up\|Down\|Left\|Right\|BSpace\|BTab\|DC\|Delete\|End\|Enter\|Escape\|F[1-9]\|F1[1-2]\|Home\|IC\|Insert\|NPage\|PageDown\|PgDn\|PPage\|PageUp\|PgUp\|Space\|Tab\|[a-zA-Z@*]\)\|\'"\'\|"\'"\|\' \'\|" "' nextgroup=Default

" {{{ Command name
syn keyword tmuxClientsSessionCommand attach-session attach
syn keyword tmuxClientsSessionCommand detach-client detach
syn keyword tmuxClientsSessionCommand has-session has
syn keyword tmuxClientsSessionCommand kill-server
syn keyword tmuxClientsSessionCommand kill-session
syn keyword tmuxClientsSessionCommand list-clients lsc
syn keyword tmuxClientsSessionCommand list-commands lscm
syn keyword tmuxClientsSessionCommand list-sessions ls
syn keyword tmuxClientsSessionCommand lock-client lockc
syn keyword tmuxClientsSessionCommand lock-session locks
syn keyword tmuxClientsSessionCommand new-session new
syn keyword tmuxClientsSessionCommand refresh-client refresh
syn keyword tmuxClientsSessionCommand rename-session rename
syn keyword tmuxClientsSessionCommand show-messages showmsgs
syn keyword tmuxClientsSessionCommand source-file source
syn keyword tmuxClientsSessionCommand start-server start
syn keyword tmuxClientsSessionCommand suspend-client suspendc
syn keyword tmuxClientsSessionCommand switch-client switchc

syn keyword tmuxWindowPanesCommand break-pane breakp
syn keyword tmuxWindowPanesCommand capture-pane capturep
syn keyword tmuxWindowPanesCommand choose-client
syn keyword tmuxWindowPanesCommand choose-session
syn keyword tmuxWindowPanesCommand choose-tree
syn keyword tmuxWindowPanesCommand choose-window
syn keyword tmuxWindowPanesCommand display-panes displayp
syn keyword tmuxWindowPanesCommand find-window findw
syn keyword tmuxWindowPanesCommand join-pane joinp
syn keyword tmuxWindowPanesCommand kill-pane killp
syn keyword tmuxWindowPanesCommand kill-window killw
syn keyword tmuxWindowPanesCommand last-pane lastp
syn keyword tmuxWindowPanesCommand last-window last
syn keyword tmuxWindowPanesCommand link-window linkw
syn keyword tmuxWindowPanesCommand list-panes lsp
syn keyword tmuxWindowPanesCommand list-windows lsw
syn keyword tmuxWindowPanesCommand move-pane movep
syn keyword tmuxWindowPanesCommand move-window movew
syn keyword tmuxWindowPanesCommand new-window neww
syn keyword tmuxWindowPanesCommand next-layout nextl
syn keyword tmuxWindowPanesCommand next-window next
syn keyword tmuxWindowPanesCommand pipe-pane pipep
syn keyword tmuxWindowPanesCommand previous-layout prevl
syn keyword tmuxWindowPanesCommand previous-window prev
syn keyword tmuxWindowPanesCommand rename-window renamew
syn keyword tmuxWindowPanesCommand resize-pane resizep
syn keyword tmuxWindowPanesCommand respawn-pane respawnp
syn keyword tmuxWindowPanesCommand respawn-window respawnw
syn keyword tmuxWindowPanesCommand rotate-window rotatew
syn keyword tmuxWindowPanesCommand select-layour selectl
syn keyword tmuxWindowPanesCommand select-pane selectp
syn keyword tmuxWindowPanesCommand select-window selectw
syn keyword tmuxWindowPanesCommand split-window splitw
syn keyword tmuxWindowPanesCommand swap-pane swapp
syn keyword tmuxWindowPanesCommand swap-window swapw
syn keyword tmuxWindowPanesCommand unlink-window unlinkw

syn keyword tmuxKeyBindingCommand bind-key bind nextgroup=tmuxBindKey skipwhite
syn keyword tmuxKeyBindingCommand unbind-key unbind nextgroup=tmuxBindKey skipwhite
syn keyword tmuxKeyBindingCommand list-keys lsk
syn keyword tmuxKeyBindingCommand send-keys send
syn keyword tmuxKeyBindingCommand send-prefix

syn keyword tmuxOptionCommand set-option set
syn keyword tmuxOptionCommand set-window-option setw
syn keyword tmuxOptionCommand show-options show
syn keyword tmuxOptionCommand show-window-options showw

syn keyword tmuxEnvironmentCommand set-environment setenv
syn keyword tmuxEnvironmentCommand show-environment showenv

syn keyword tmuxStatusLineCommand command-prompt
syn keyword tmuxStatusLineCommand confirm-before confirm
syn keyword tmuxStatusLineCommand display-message display

syn keyword tmuxBufferCommand choose-buffer
syn keyword tmuxBufferCommand clear-history clearhist
syn keyword tmuxBufferCommand delete-buffer deleteb
syn keyword tmuxBufferCommand list-buffers lsb
syn keyword tmuxBufferCommand load-buffer loadb
syn keyword tmuxBufferCommand paste-buffer pasteb
syn keyword tmuxBufferCommand save-buffer saveb
syn keyword tmuxBufferCommand set-buffer setb
syn keyword tmuxBufferCommand show-buffer showb

syn keyword tmuxMiscellaneousCommand clock-mode
syn keyword tmuxMiscellaneousCommand if-shell if
syn keyword tmuxMiscellaneousCommand lock-server lock
syn keyword tmuxMiscellaneousCommand run-shell run
syn keyword tmuxMiscellaneousCommand wait-for wait
" }}}

syn region tmuxCommentLine start=/#/ end=/$/
syn region tmuxString start=/"/ end=/"/

" Default highlighting {{{
hi def link tmuxCommand Keyword
hi def link tmuxKeyBindingCommand tmuxCommand
hi def link tmuxOptionCommand tmuxCommand
hi def link tmuxEnvironmentCommand tmuxCommand

hi def link tmuxBindKey Identifier

hi def link tmuxCommentLine Comment
hi def link tmuxString String
" }}}

