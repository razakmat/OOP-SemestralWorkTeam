tests
testDefaultSearchNonExistingFilm
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState inputText: 'nonexistingid'.
	self assert: window state class equals: ViewFilmState.
	self assert: window state class currentFilm equals: (AbstractFilm empty)