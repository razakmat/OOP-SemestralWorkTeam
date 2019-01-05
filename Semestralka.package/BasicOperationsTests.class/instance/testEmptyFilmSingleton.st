tests
testEmptyFilmSingleton
	| anotherEmptyMovie testdb |
	testdb := FilmDatabaseWindow new.
	[ anotherEmptyMovie := EmptyFilm new ]
		on: Error
		do: [ :e | self assert: e asString = 'Error: cannot create instance of singleton' ]