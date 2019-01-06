tests
testReturnToMovieButton
	| currentState window |
	self setUpConnection.
	window := self initNormalRoot.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	window state buttonDirector performAction.
	self assert: window state class equals: DirectorState.
	currentState := window state.
	currentState buttonReturn performAction.
	self assert: window state class equals: ViewMovieState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ])