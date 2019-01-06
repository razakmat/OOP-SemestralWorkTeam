tests
testRemoveFilmAndConfirmState
	| window filmCnt filmToRemove |
	self setUpConnection.
	window := self initAdminRoot.
	filmCnt := RealFilm selectAll size.
	window state screen setSelectedIndex: 1.

	window state buttonRemove performAction.
	self assert: window state class = ConfirmState.
	window state buttonNo performAction.
	self assert: filmCnt = (RealFilm selectAll size ).
	
	window state screen setSelectedIndex: 1.
	filmToRemove := window state selectedFilmOnScreen.
	window state buttonRemove performAction.
	window state buttonYes performAction.
	
	self assert: filmCnt = (RealFilm selectAll size + 1).
	self assert: (RealFilm selectOne: [ :each | each id = filmToRemove ]) isNil.
	self assert: window state class = AdminRootState