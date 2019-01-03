tests
testDeleteReview
	|currentState window reviewCnt|
	self setUpConnection.
	SingleState currentFilm: (RealFilm selectOne: [:each | each id = 1]).
	ManageReviewState currentFilm: SingleState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	reviewCnt := ManageReviewState currentFilm reviews size.
	currentState screen setSelectedIndex: 1.
	currentState buttonDelete performAction.
	self assert: window state class = ManageReviewState.
	self assert: (reviewCnt - 1) = ManageReviewState currentFilm reviews size.
	
	self cleanTest
	