tests
testManageReviewButtonReturn
	|currentState window reviewCnt currentFilm|
	self setUpConnection.
	currentFilm := (RealFilm selectOne: [:each | each id = 1]).
	SingleState currentFilm: currentFilm.
	ManageReviewState currentFilm: currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	reviewCnt := currentFilm reviews size.
	currentState buttonReturn performAction.
	self assert: window state class = SingleState.
	self assert: reviewCnt = currentFilm reviews size.
	
	 