tests
testSingOut
	|currentState window|
	self setUpConnection.
	window := self initState: AdminRootState.
	currentState := window state.
	currentState buttonSignOut performAction.
	self assert: window state class = AuthentificationState.
	self assert: MyWindow1 user nick isNil.
	self assert: MyWindow1 user password isNil
	
	
	
	