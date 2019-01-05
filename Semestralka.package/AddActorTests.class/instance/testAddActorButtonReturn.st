tests
testAddActorButtonReturn
	|currentState window actorCnt|
	self setUpConnection.
	actorCnt := Actor selectAll size.
	window := self initState: AddActorState.
	currentState := window state.
	currentState buttonReturn performAction.
	self assert: Actor selectAll size = actorCnt.
	self assert: window state class equals: AdminRootState.
	
	 