tests
testDefaultStateAfterLogin
	|currentState window|
	self setUpConnection.
	window := MyWindow1 new: AuthentificationState.
	currentState := window state.
	currentState loginPassed: 'admin'; 
					passwordPassed: 'admin'.
	currentState buttonLogInAuth performAction.
	self assert: window state class = AdminRootState.
	self assert: MyWindow1 user nick = 'admin'.
	self assert: MyWindow1 user password = 'admin'
	
	
	
	