tests
testManageReviewButtonReturn
	|currentState window reviewCnt|
	self setUpConnection.
	SingleState currentFilm: (RealFilm selectOne: [:each | each id = 1]).
	ManageReviewState currentFilm: SingleState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	reviewCnt := ManageReviewState currentFilm reviews size.
	currentState buttonReturn performAction.
	self assert: window state class = SingleState.
	self assert: reviewCnt = ManageReviewState currentFilm reviews size.
	
	 