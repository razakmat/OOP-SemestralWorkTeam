tests
initManageUserState
	|window|
	window := self initAdminRoot.
	window state buttonUsers performAction.
	^window