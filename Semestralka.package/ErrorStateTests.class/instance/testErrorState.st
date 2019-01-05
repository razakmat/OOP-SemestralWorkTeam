tests
testErrorState
	| testdb currentState |
	self setUpConnection.
	testdb := FilmDatabaseWindow new.
	testdb state
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	testdb state logInAuth.

	testdb state buttonViewFilm performAction.
	testdb state buttonDirector performAction.

	currentState := testdb state.
	self assert:
			(currentState class = ErrorState
				and: currentState errorReceived class = ShowDirectorError)