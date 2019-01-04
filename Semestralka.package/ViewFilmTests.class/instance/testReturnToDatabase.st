tests
testReturnToDatabase
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
	currentState := window state.
	self assert: currentState class equals: SingleState.
	currentState buttonReturn performAction.
	self assert: window state class equals: NormalRootState