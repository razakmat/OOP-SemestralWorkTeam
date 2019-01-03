tests
testLoginAdmin
	| testdb |
	self setUpConnection.
	testdb := MyWindow1 new.
	testdb state loginPassed: 'admin'.
	testdb state passwordPassed: 'admin'.
	testdb state logInAuth.

	self assert: testdb state class = AdminRootState.
	self cleanTest.