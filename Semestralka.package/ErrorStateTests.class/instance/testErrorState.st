tests
testErrorState
	| testdb currentState |
	self setUpConnection.
	testdb := self initNormalRoot.
	
	testdb state buttonViewFilm performAction.
	testdb state buttonDirector performAction.

	currentState := testdb state.
	self assert:
			(currentState class = ErrorState
				and: currentState errorReceived class = ShowDirectorError)