initialization
initializePresenter
	inputName acceptBlock: [ :aString | newFilm name: aString ].
	inputDirector acceptBlock: [ :anID | newFilm director:  (Director selectOne: [ :each | each id = anID greaseInteger ])].
	inputGenre acceptBlock: [ :aGenre | newFilm genre: aGenre asSymbol ].
	buttonReturn action: [ myWindow dynamicChange: WholeDatabaseState ].
	buttonAdd action: [ self addFilm. myWindow dynamicChange: AddFilmState  ]