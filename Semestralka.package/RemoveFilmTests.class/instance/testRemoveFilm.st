tests
testRemoveFilm
	|window filmCnt filmToRemove|
	self setUpConnection.
	window := self initRemoveFilmTests.
	filmCnt := (RealFilm selectAll size).
	window state screen setSelectedIndex: 1.
	filmToRemove := window state selectedFilmOnScreen.
	window state buttonRemove performAction.
	self assert: filmCnt = (RealFilm selectAll size + 1).
	self assert: (RealFilm selectOne: [:each | each id = filmToRemove]) isNil.
	self assert: window state class = AdminRootState