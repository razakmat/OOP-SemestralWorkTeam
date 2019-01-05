tests
testDefaultStateAfterLogin
	|window |
	self setUpConnection.
	window := self initAdminRoot.
	self assert: window user nick = 'admin'.
	self assert: window user password = 'admin'