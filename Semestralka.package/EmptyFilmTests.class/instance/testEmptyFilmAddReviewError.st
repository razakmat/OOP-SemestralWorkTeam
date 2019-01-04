tests
testEmptyFilmAddReviewError
	| testdb |
	self setUpConnection.
	testdb := MyWindow1 new.
	testdb state
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	testdb state logInAuth.

	testdb state buttonViewFilm performAction.
	testdb state buttonReview performAction.

	self assert: false