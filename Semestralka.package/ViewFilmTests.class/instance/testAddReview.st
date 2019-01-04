tests
testAddReview
		| currentState window |
	self setUpConnection.
	window := MyWindow1 new: AuthentificationState.
	currentState := window state.
	currentState
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	window state buttonLogInAuth performAction.
	window state screen setSelectedIndex: 1.
	window state buttonViewFilm performAction.
	window state buttonReview performAction.