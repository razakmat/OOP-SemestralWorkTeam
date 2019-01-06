parsing
selectedIdOnScreen
	| substr |
	substr := ', Name\: .*' asRegex copy: screen selectedItem replacingMatchesWith: ''.
	^ ('(ID|id)\: ' asRegex copy: substr replacingMatchesWith: '') trimBoth