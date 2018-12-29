initialization
initializePresenter
	inputName acceptBlock: [ :aString | newFilm name: aString ].
	inputDirector acceptBlock: [ :anID | newFilm director:  (Director selectOne: [ :each | each id = anID greaseInteger ])].
	inputGenre acceptBlock: [ :aGenre | newFilm genre: aGenre asSymbol ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].
	buttonAdd action: [ self addFilm.  (MyWindow1 new: AddFilmState) openWithSpec. myWindow delete ]