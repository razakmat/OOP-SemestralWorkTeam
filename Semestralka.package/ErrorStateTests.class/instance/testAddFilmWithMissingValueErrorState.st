tests
testAddFilmWithMissingValueErrorState
	| testdb currentState |
	self setUpConnection.
	testdb := self initAdminRoot.

	testdb state buttonAddFilm performAction.
	testdb state buttonAdd performAction.
	currentState := testdb state.
	self assert:
			(currentState class = ErrorState
				and: currentState errorReceived class = AddObjectWithMissingValuesError).