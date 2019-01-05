tests
initRemoveFilmTests
	|window|
	window := FilmDatabaseWindow new.
	window state loginPassed: 'admin'; 
					passwordPassed: 'admin'.
	window state buttonLogInAuth performAction.
	self assert: window state class = AdminRootState.
	^window