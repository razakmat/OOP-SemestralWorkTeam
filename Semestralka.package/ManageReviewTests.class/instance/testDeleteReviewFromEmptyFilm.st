tests
testDeleteReviewFromEmptyFilm
	|currentState window|
	self setUpConnection.
	ViewMovieState currentFilm: (AbstractFilm empty).
	ManageReviewState currentFilm: ViewMovieState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	currentState buttonDelete performAction.
	self assert: window state class  equals: ManageReviewState.
