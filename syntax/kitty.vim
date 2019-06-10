if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn keyword kittyKeyword func   nextgroup=kittyFuncName   skipwhite skipempty
syn keyword kittyKeyword let    nextgroup=kittyIdentifier skipwhite skipempty
syn keyword kittyKeyword return

syn keyword kittyType void str

syn match kittyFunc  /[a-z0-9][a-z0-9_]*\ze(/  display
syn match kittyMacro /[a-z0-9][a-z0-9_]*!\ze(/ display

syn match kittyIdentifier /[a-zA-Z_][a-zA-Z0-9_]*/ display contained
syn match kittyFuncName   /[a-zA-Z_][a-zA-Z0-9_]*/ display contained

syn match kittyOperator /=/ display

syn region kittyString start=+"+ end=+"+

syn region kittyCommentLine  start="//"  end="$"

hi def link kittyKeyword     Keyword
hi def link kittyType        Type
hi def link kittyFunc        Function
hi def link kittyMacro       Macro
hi def link kittyIdentifier  Identifier
hi def link kittyFuncName    Function
hi def link kittyOperator    Operator
hi def link kittyString      String
hi def link kittyCommentLine Comment
