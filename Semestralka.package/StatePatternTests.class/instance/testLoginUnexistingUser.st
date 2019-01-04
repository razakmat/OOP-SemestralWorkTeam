tests
testLoginUnexistingUser
	| testdb |
	self setUpConnection.
	testdb := MyWindow1 new.
	testdb state loginPassed: 'neexistujiciUzivatel'.
	testdb state passwordPassed: 'nemaZadneHeslo123!'.
	testdb state logInAuth.

	self assert: testdb state class = AuthentificationState.
	self cleanTest