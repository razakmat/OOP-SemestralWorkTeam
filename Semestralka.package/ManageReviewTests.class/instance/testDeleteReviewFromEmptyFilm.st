tests
testDeleteReviewFromEmptyFilm
	|currentState window|
	self setUpConnection.
	ViewFilmState currentFilm: (AbstractFilm empty).
	ManageReviewState currentFilm: ViewFilmState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	currentState buttonDelete performAction.
	self assert: window state class  equals: ManageReviewState.
