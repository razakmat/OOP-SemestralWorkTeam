tests
testLoginNonexistingUser
	| testdb |
	self setUpConnection.
	testdb := FilmDatabaseWindow new.
	testdb state loginPassed: 'neexistujiciUzivatel'.
	testdb state passwordPassed: 'nemaZadneHeslo123!'.
	testdb state logInAuth.

	self assert: testdb state class = RegisterState.