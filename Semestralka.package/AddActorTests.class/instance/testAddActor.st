tests
testAddActor
	|currentState window actorCnt addedActor|
	self setUpConnection.
	addedActor := Actor new firstName: 'Test2'; surname: 'Actor'; born: 1000.
	actorCnt := Actor selectAll size.
	window := self initState: AddActorState.
	currentState := window state.
	currentState newPerson: addedActor.
	currentState buttonAdd performAction.
	self assert: Actor selectAll size = (actorCnt + 1).
	self assert: (Actor selectOne: [ :each | each id = (actorCnt + 1) ]) = addedActor.
	self assert: window state class = AddActorState.
	self assert: (window state newPerson = addedActor) not.
	
	