tests
initNormalRoot
	|window|
	window := FilmDatabaseWindow new.
	window state loginPassed: 'normal'; 
					passwordPassed: 'normal'.
	window state buttonLogInAuth performAction.
	self assert: window state class = NormalRootState.
	^window