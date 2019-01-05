tests
testSignUpNewUser
	| testdb |
	self setUpConnection.
	testdb := FilmDatabaseWindow new.
	testdb state
		loginPassed: 'vokurka';
		passwordPassed: 'mrkev'.
	testdb state buttonLogInAuth performAction.

	self assert: testdb state class = LogInState.
	testdb state buttonSignUp performAction.
	self assert: testdb state class = SignUpState.

	testdb state
		loginPassed: 'vokurka';
		passwordPassed: 'mrkev'.
	testdb state buttonSignUp performAction.
	testdb state buttonReturn performAction.

	testdb state
		loginPassed: 'vokurka';
		passwordPassed: 'mrkev'.
	testdb state buttonLogInAuth performAction.
	self assert: testdb state class = NormalRootState.