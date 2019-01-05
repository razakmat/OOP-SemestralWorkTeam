tests
testEmptyFilmAddReviewError
	| testdb |
	self setUpConnection.
	testdb := self initNormalRoot.
	testdb state buttonViewFilm performAction.
	testdb state buttonReview performAction.

	self assert: false