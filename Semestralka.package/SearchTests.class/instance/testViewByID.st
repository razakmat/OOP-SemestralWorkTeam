tests
testViewByID
	|window currentState|
	self setUpConnection.
	window := self initNormalRoot.
	currentState := window state.
	currentState buttonSearch byID click.
	currentState inputText: 1.
	self assert: window state class equals: ViewFilmState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ])