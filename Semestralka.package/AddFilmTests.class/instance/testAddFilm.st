tests
testAddFilm
	|currentState window filmCnt addedFilm|
	self setUpConnection.
	addedFilm := RealFilm new name: 'Test';
			director: (Director selectOne: [:each | each id = 1]);
			genre: #horror.
	filmCnt := RealFilm selectAll size.
	window := self initState: AddFilmState.
	currentState := window state.
	currentState newFilm: addedFilm.
	currentState buttonAdd performAction.
	self assert: RealFilm selectAll size = (filmCnt + 1).
	self assert: (RealFilm selectOne: [ :each | each id = (filmCnt + 1) ]) = addedFilm.
	self assert: window state class = AddFilmState.
	self assert: (window state newFilm = addedFilm) not.
	
	self cleanTest
	