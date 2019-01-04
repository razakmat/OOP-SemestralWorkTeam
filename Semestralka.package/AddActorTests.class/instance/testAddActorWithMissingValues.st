tests
testAddActorWithMissingValues
	|currentState window actorCnt addedActor error|
	self setUpConnection.
	addedActor := Actor new firstName: 'Test2'.
	actorCnt := Actor selectAll size.
	window := self initState: AddActorState.
	currentState := window state.
	currentState newPerson: addedActor.
	error := false.
	[currentState buttonAdd performAction] on: Error do: [ error := true ].
	self assert: error.
	self assert: Actor selectAll size = actorCnt.
	self assert: window state class = AddActorState.

	