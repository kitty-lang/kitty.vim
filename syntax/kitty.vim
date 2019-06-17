if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn keyword kittyKeyword func   nextgroup=kittyFuncName   skipwhite skipempty
syn keyword kittyKeyword let    nextgroup=kittyIdentifier skipwhite skipempty
syn keyword kittyKeyword return

syn keyword kittyType void str i32

syn match kittyIdentifier /[a-zA-Z_][a-zA-Z0-9_]*/ display
syn match kittyFuncName   /[a-zA-Z_][a-zA-Z0-9_]*/ display contained

syn match kittyFunc  /[a-z0-9][a-z0-9_]*\ze(/  display
syn match kittyMacro /[a-z0-9][a-z0-9_]*!\ze(/ display

syn match kittyOperator /=/ display

syn match kittyNumber /[0-9]\+/ display

syn region kittyString    start=+"+ end=+"+ contains=kittyStringEsc
syn region kittyDynString start=+`+ end=+`+ contains=kittyDynStringInsert

syn match kittyStringEsc /\\"/ display contained

syn region kittyDynStringInsert start=+${+ end=+}+ contains=TOP,kittyKeyword

syn region kittyCommentLine  start="//"  end="$"
syn region kittyCommentBlock start="/\*" end="\*/" contains=kittyCommentBlock

hi def link kittyKeyword         Keyword
hi def link kittyType            Type
hi def link kittyFunc            Function
hi def link kittyMacro           Macro
hi def link kittyFuncName        Function
hi def link kittyIdentifier      Identifier
hi def link kittyOperator        Operator
hi def link kittyNumber          Number
hi def link kittyString          String
hi def link kittyDynString       String
hi def link kittyStringEsc       String
hi def link kittyDynStringInsert Function
hi def link kittyCommentLine     Comment
hi def link kittyCommentBlock    Comment
