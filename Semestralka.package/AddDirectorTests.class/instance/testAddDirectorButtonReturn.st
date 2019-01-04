tests
testAddDirectorButtonReturn
	|currentState window directorCnt|
	self setUpConnection.
	directorCnt := Director selectAll size.
	window := self initState: AddDirectorState.
	currentState := window state.
	currentState buttonReturn performAction.
	self assert: Director selectAll size = directorCnt.
	self assert: window state class = AdminRootState.
	
	 