tests
testAddFilmWithMissingValueErrorState
	| testdb currentState |
	self setUpConnection.
	testdb := FilmDatabaseWindow new.
	testdb state
		loginPassed: 'admin';
		passwordPassed: 'admin'.
	testdb state logInAuth.

	testdb state buttonAddFilm performAction.
	testdb state buttonAdd performAction.
	currentState := testdb state.
	self assert:
			(currentState class = ErrorState
				and: currentState errorReceived class = AddObjectWithMissingValuesError).