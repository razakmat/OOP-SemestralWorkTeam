tests
testAddFilmWithMissingValues
	|currentState window filmCnt addedFilm error|
	self setUpConnection.
	addedFilm := RealFilm new name: 'Test';
			genre: #horror.
	filmCnt := RealFilm selectAll size.
	window := self initState: AddFilmState.
	currentState := window state.
	currentState newFilm: addedFilm.
	error := false.
	[currentState buttonAdd performAction] on: Error do: [ error := true ].
	self assert: error.
	self assert: RealFilm selectAll size = filmCnt.
	self assert: window state class = AddFilmState.
	
	self cleanTest
	