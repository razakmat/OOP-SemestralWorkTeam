tests
testDeleteUser
	|currentState window userCnt toDelete|
	self setUpConnection.
	window := self initManageUserState.
	currentState := window state.
	userCnt := User selectAll size.
	currentState screen setSelectedIndex: 1.
	toDelete := currentState screen selectedItem.
	currentState buttonDelete performAction.
	self assert: window state class = ManageUsersState.
	self assert: (userCnt - 1) = User selectAll size.
	self assert: (User selectOne: [ :each | each nick = toDelete ]) isNil.
	self cleanTest
	