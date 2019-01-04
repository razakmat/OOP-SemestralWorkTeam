tests
testSignOut
	| currentState window |
	self setUpConnection.
	window := MyWindow1 new: AuthentificationState.
	currentState := window state.
	currentState
		loginPassed: 'admin';
		passwordPassed: 'admin'.
	currentState buttonLogInAuth performAction.
	self assert: window state class = AdminRootState.
	self assert: window user nick = 'admin'.
	self assert: window user password = 'admin'.
	window state buttonSignOut performAction.
	self assert: window state class = AuthentificationState.
	self assert: window user nick isNil.
	self assert: window user password isNil