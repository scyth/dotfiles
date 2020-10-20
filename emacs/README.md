After putting the files in ~/.emacs.d/ and running emacs for the first time,
init.el needs to be updated, such that generated content from the bottom gets
moved to the top of the file in order to avoid having to approve sml/theme config 
on every restart.

For GO LSP to work, run M-x lsp-workspace-folders-add and restart emacs afterwards.
