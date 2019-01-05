tests
testSearchByGenreNonExisting
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState buttonSearch byGenre click.
	currentState inputText: 'nonexistinggenre'.
	self assert: window state class equals: CollectionState.
	self assert: window state screen listItems = (currentState genreCollection: 'nonexistinggenre')