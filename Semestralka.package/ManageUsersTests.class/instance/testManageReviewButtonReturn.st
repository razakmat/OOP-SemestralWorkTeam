tests
testManageReviewButtonReturn
	|currentState window userCnt|
	self setUpConnection.
	window := self initManageUserState.
	currentState := window state.
	userCnt := User selectAll size.
	currentState buttonReturn performAction.
	self assert: window state class = AdminRootState.
	self assert: userCnt = User selectAll size.
	
	self cleanTest
	 