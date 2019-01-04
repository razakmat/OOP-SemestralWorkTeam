tests
testShowDirectorInfo
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
	currentState := window state.
	currentState buttonDirector performAction.
	self assert: window state class equals: DirectorState.
	self assert: window state class director equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ]) director.