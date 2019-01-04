tests
testDefaultStateAfterLogin
	|currentState window|
	self setUpConnection.
	window := MyWindow1 new: AuthentificationState.
	currentState := window state.
	currentState loginPassed: 'normal'; 
					passwordPassed: 'normal'.
	currentState buttonLogInAuth performAction.
	self assert: window state class = NormalRootState.
	self assert: window user nick = 'normal'.
	self assert: window user password = 'normal'