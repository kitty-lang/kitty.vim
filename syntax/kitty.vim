if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword kittyKeyword func nextgroup=kittyFuncName skipwhite skipempty

syn match kittyFuncName /[a-z0-9][a-z0-9_]*/ display contained

" Comments
syn region kittyCommentLine start="//" end="$"

" Highlighting
hi def link kittyKeyword     Keyword
hi def link kittyFuncName    Function
hi def link kittyCommentLine Comment
