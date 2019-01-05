tests
testDeleteReview
	|currentState window reviewCnt currentFilm|
	self setUpConnection.
	currentFilm := (RealFilm selectOne: [:each | each id = 1]).
	SingleState currentFilm: currentFilm.
	ManageReviewState currentFilm: currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	reviewCnt := currentFilm reviews size.
	currentState screen setSelectedIndex: 1.
	currentState buttonDelete performAction.
	self assert: window state class = ManageReviewState.
	self assert: (reviewCnt - 1) = currentFilm reviews size.
	
	