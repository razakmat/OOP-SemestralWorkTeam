tests
testSignOut
	| window |
	self setUpConnection.
	window := self initAdminRoot.
	self assert: window user nick = 'admin'.
	self assert: window user password = 'admin'.
	window state buttonSignOut performAction.
	self assert: window state class = RegisterState.
	self assert: window user nick isNil.
	self assert: window user password isNil