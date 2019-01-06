tests
testViewNotSelectedFilm
	| currentState window |
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState buttonViewFilm performAction.
	self assert: window state class equals: ViewFilmState.
	self assert: window state class currentFilm equals: AbstractFilm empty