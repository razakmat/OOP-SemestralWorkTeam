tests
testSignUpNewUser
	| testdb |
	self setUpConnection.
	testdb := MyWindow1 new.
	testdb state
		loginPassed: 'vokurka';
		passwordPassed: 'mrkev'.
	testdb state buttonLogInAuth performAction.

	self assert: testdb state class = AuthentificationState.
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