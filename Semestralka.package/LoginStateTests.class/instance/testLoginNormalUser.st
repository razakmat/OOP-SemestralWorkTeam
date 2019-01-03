tests
testLoginNormalUser
	| testdb |
	self setUpConnection.
	testdb := MyWindow1 new.
	testdb state loginPassed: 'normal'.
	testdb state passwordPassed: 'normal'.
	testdb state logInAuth.

	self assert: testdb state class = NormalRootState.
	self cleanTest