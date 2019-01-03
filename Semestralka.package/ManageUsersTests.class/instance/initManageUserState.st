tests
initManageUserState
	|window|
	window := MyWindow1 new.
	window state loginPassed: 'admin'; 
					passwordPassed: 'admin'.
	window state buttonLogInAuth performAction.
	self assert: window state class = AdminRootState.
	window state buttonUsers performAction.
	^window