tests
testRemoveNonSelectedFilm
	|window filmCnt|
	self setUpConnection.
	window := self initAdminRoot.
	filmCnt := (RealFilm selectAll size).
	window state buttonRemove performAction.
	self assert: filmCnt = (RealFilm selectAll size).
	self assert: window state class = AdminRootState.
	
	