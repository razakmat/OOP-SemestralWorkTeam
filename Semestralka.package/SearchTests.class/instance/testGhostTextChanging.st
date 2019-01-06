tests
testGhostTextChanging
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	self assert: false