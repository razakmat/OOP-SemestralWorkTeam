tests
testDefaultStateAfterLogin
	|window|
	self setUpConnection.
	window := self initNormalRoot.
	self assert: window user nick = 'normal'.
	self assert: window user password = 'normal'