tests
testViewFilm
	| currentState window |
	self setUpConnection.
	window := FilmDatabaseWindow new: AuthenticationState.
	currentState := window state.
	currentState
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	currentState buttonLogInAuth performAction.
	self assert: window state class equals: NormalRootState.
	currentState := window state.
	currentState screen setSelectedIndex: 1.
	currentState buttonViewFilm performAction.
	self assert: window state class equals: SingleState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ]).
