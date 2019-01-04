tests
testReturnToMovieButton
	| currentState window |
	self setUpConnection.
	window := FilmDatabaseWindow new: AuthenticationState.
	currentState := window state.
	currentState
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	window state buttonLogInAuth performAction.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	window state buttonDirector performAction.
	self assert: window state class equals: DirectorState.
	currentState := window state.
	currentState buttonReturn performAction.
	self assert: window state class equals: SingleState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ])