tests
testSearchByGenre
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState buttonSearch byGenre click.
	currentState inputText: 'horror'.
	currentState := window state.
	self assert: currentState class equals: CollectionState.
	self assert: currentState screen listItems = (currentState genreCollection: 'horror').
	self assert: currentState screen listItems size = 1.