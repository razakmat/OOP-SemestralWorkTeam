tests
testAddFilmButtonReturn
	|currentState window filmCnt|
	self setUpConnection.
	filmCnt := RealFilm selectAll size.
	window := self initState: AddFilmState.
	currentState := window state.
	currentState buttonReturn performAction.
	self assert: RealFilm selectAll size equals: filmCnt.
	self assert: window state class = AdminRootState

	