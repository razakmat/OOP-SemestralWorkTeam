tests
testGhostTextChanging
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	self assert: currentState input ghostText equals: 'Type ID of a movie...'.
	currentState buttonSearch byGenre click.
	self assert: currentState input ghostText equals: 'Type genre of a movie...'.
	currentState buttonSearch byID click.
	self assert: currentState input ghostText equals: 'Type ID of a movie...'.
	self assert: currentState class equals: NormalRootState.