tests
testAddDirectorWithMissingValues
	|currentState window directorCnt addedDirector error|
	self setUpConnection.
	addedDirector := Director new surname: 'Test2'.
	directorCnt := Director selectAll size.
	window := self initState: AddDirectorState.
	currentState := window state.
	currentState newPerson: addedDirector.
	error := false.
	[currentState buttonAdd performAction] on: Error do: [ error := true ].
	self assert: error.
	self assert: Director selectAll size = directorCnt.
	self assert: window state class = AddDirectorState.
	
	self cleanTest
	