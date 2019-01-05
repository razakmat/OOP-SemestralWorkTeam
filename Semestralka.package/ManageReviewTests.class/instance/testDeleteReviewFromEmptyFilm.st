tests
testDeleteReviewFromEmptyFilm
	|currentState window|
	self setUpConnection.
	SingleState currentFilm: (AbstractFilm empty).
	ManageReviewState currentFilm: SingleState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	currentState buttonDelete performAction.
	self assert: window state class  equals: ManageReviewState.
