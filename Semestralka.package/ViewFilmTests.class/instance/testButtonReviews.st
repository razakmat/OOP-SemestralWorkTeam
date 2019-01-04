tests
testButtonReviews
	| currentState window |
	self setUpConnection.
	window := FilmDatabaseWindow new: AuthenticationState.
	currentState := window state.
	currentState
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	window state buttonLogInAuth performAction.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	window state buttonReview performAction.
	self assert: window state class equals: AddReviewState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ]).
	self cleanTest