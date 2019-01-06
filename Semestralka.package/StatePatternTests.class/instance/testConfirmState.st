tests
testConfirmState
	| testdb userToDelete nick confirmText |
	self setUpConnection.
	testdb := self initAdminRoot.
	testdb state buttonUsers performAction.
	testdb state screen setSelectedIndex: 1.
	nick := testdb state selectedNickOnScreen.
	userToDelete := User selectOne: [ :each | each nick = nick asString ].
	testdb state buttonDelete performAction.
	confirmText := 'Are you sure you want to delete ' , userToDelete printInfo , '?'.

	self assert: (testdb state class = ConfirmState and: testdb state text text = confirmText)