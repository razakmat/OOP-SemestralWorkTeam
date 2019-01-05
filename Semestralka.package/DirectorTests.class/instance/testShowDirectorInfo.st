tests
testShowDirectorInfo
	| currentState window |
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState screen setSelectedIndex: 1.
	currentState buttonViewFilm performAction.
	currentState := window state.
	currentState buttonDirector performAction.
	self assert: window state class equals: DirectorState.
	self assert: window state class director equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ]) director.