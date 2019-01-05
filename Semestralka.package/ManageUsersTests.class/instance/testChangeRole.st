tests
testChangeRole
	|window currentState userCnt|
	self setUpConnection.
	window := self initManageUserState.
	userCnt := User selectAll size.
	currentState := window state.
	currentState screen setSelectedIndex: 1.
	currentState buttonChangeRole performAction.
	self assert: window state class = ManageUsersState.
	self assert: (User selectOne: [ :each | each nick = 'normal' ]) class equals: AdminUser.
	self assert: userCnt equals: User selectAll size.
	window state screen setSelectedIndex: 1.
	window state buttonChangeRole performAction.
	self assert: window state class = ManageUsersState.
	self assert: (User selectOne: [ :each | each nick = 'normal' ]) class equals: NormalUser.
	self assert: userCnt equals: User selectAll size
	
	
	