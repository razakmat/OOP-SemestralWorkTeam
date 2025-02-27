tests
testAddPersonWithMissingValueErrorState
	| testdb addIncompleteActorState addIncompleteDirectorState |
	self setUpConnection.
	testdb := self initAdminRoot.

	testdb state buttonAddActor performAction.
	testdb state buttonAdd performAction.
	addIncompleteActorState := testdb state.
	self assert:
			(addIncompleteActorState class = ErrorState
				and: addIncompleteActorState errorReceived class = AddObjectWithMissingValuesError).

	testdb state: AdminRootState.
	testdb state buttonAddDirector performAction.
	testdb state buttonAdd performAction.
	addIncompleteDirectorState := testdb state.
	self assert:
			(addIncompleteActorState class = ErrorState
				and: addIncompleteActorState errorReceived class = AddObjectWithMissingValuesError)