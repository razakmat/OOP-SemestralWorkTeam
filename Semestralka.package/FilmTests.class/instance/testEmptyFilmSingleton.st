tests
testEmptyFilmSingleton
	| anotherEmptyMovie testdb |
	testdb := MyWindow1 new.
	[ anotherEmptyMovie := EmptyFilm new ]
		on: Error
		do: [ :e | self assert: e asString = 'Error: cannot create instance of singleton' ]