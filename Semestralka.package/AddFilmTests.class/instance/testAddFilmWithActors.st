tests
testAddFilmWithActors
	|currentState window filmCnt addedFilm actor|
	self setUpConnection.
	actor := Actor selectOne: [ :each | each id = 1 ].
	addedFilm := RealFilm new name: 'Test';
			director: (Director selectOne: [:each | each id = 1]);
			genre: #horror.
	
	filmCnt := RealFilm selectAll size.
	window := self initState: AddFilmState.
	currentState := window state.
	currentState buttonAddActor performAction.
	self assert: window state newFilm actors size = 0.
	self assert: window state screen listItems = currentState screen listItems.
	window state newFilm: addedFilm.
	window state screen setSelectedIndex: 2.
	window state buttonAddActor performAction.
	window state buttonAdd performAction.	
	self assert: RealFilm selectAll size = (filmCnt + 1).
	self assert: (RealFilm selectOne: [ :each | each id = (filmCnt + 1) ]) actors size = 1.
	self assert: window state class = AddFilmState.
	
	