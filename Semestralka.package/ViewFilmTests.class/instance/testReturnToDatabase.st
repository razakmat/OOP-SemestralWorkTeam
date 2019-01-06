tests
testReturnToDatabase
	| currentState window |
	self setUpConnection.
	window := self initNormalRoot.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	currentState := window state.
	self assert: currentState class equals: ViewFilmState.
	currentState buttonReturn performAction.
	self assert: window state class equals: NormalRootState