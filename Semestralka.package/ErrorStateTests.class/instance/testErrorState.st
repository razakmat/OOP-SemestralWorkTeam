tests
testErrorState
	| testdb |
	self setUpConnection.
	testdb := FilmDatabaseWindow new.
	testdb state
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	testdb state logInAuth.

	testdb state buttonViewFilm performAction.
	testdb state buttonDirector performAction.
	self assert: testdb state class = ErrorState.
	self
		assert:
			testdb state errorMessage text =
				 'Cannot show info about director, when no director is selected!'