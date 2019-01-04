tests
testDeleteNonSelectedReview
	|currentState window userCnt|
	self setUpConnection.
	window := self initManageUserState.
	currentState := window state.
	userCnt := User selectAll size.
	currentState buttonDelete performAction.
	self assert: window state class = ManageUsersState.
	self assert: userCnt = User selectAll size.
	
	