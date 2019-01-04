tests
testDeleteReviewFromEmptyFilm
	|currentState window reviewCnt error|
	self setUpConnection.
	SingleState currentFilm: (AbstractFilm empty).
	ManageReviewState currentFilm: SingleState currentFilm.
	window := self initState: ManageReviewState.
	currentState := window state.
	error := false.
	[currentState buttonDelete performAction] on: Error do: [ 
		error := true
		 ].
	self assert: error.
	self assert: window state class = ManageReviewState.
