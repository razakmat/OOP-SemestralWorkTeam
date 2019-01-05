tests
testEmptyFilmAddReviewError
	| testdb |
	self setUpConnection.
	testdb := self initNormalRoot.
	testdb state buttonViewFilm performAction.
	testdb state buttonReview performAction.

	self assert: testdb state class = AddReviewState.
	testdb state currentFilm: AbstractFilm empty.
	[ testdb state currentFilm addReview: 'some review' ]
		on: Error
		do: [ :e | self assert: e class = AddReviewError  ].
