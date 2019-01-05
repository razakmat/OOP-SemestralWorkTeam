tests
testAddDirector
	| currentState window directorCnt addedDirector |
	self setUpConnection.
	addedDirector := Director new
		firstName: 'Test2';
		surname: 'Director';
		born: 1000.
	directorCnt := Director selectAll size.
	window := self initState: AddDirectorState.
	currentState := window state.
	currentState newPerson: addedDirector.
	currentState buttonAdd performAction.
	self assert: Director selectAll size = (directorCnt + 1).
	self
		assert: (Director selectOne: [ :each | each id = (directorCnt + 1) ]) = addedDirector.
	self assert: window state class equals: AddDirectorState.
	self assert: (window state newPerson = addedDirector) not.
