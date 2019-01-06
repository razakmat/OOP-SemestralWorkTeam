tests
testViewFilm
	| currentState window |
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState screen setSelectedIndex: 1.
	currentState buttonViewFilm performAction.
	self assert: window state class equals: ViewFilmState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ])