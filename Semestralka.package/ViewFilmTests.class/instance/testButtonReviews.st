tests
testButtonReviews
	|window |
	self setUpConnection.
	window := self initNormalRoot.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	window state buttonReview performAction.
	self assert: window state class equals: ReviewsState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ])