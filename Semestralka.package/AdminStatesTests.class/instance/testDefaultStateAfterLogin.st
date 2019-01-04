tests
testDefaultStateAfterLogin
	| currentState window |
	self setUpConnection.
	window := FilmDatabaseWindow new: AuthenticationState.
	currentState := window state.
	currentState
		loginPassed: 'admin';
		passwordPassed: 'admin'.
	currentState buttonLogInAuth performAction.
	self assert: window state class = AdminRootState.
	self assert: window user nick = 'admin'.
	self assert: window user password = 'admin'