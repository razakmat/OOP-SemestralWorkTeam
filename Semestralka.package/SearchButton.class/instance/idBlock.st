accessing
idBlock
	^ [ :aNumber :aWindow | 
	| film |
	film := RealFilm selectOne: [ :each | each id = aNumber greaseInteger ].
	film ifNil: [ film := AbstractFilm empty ].
	ViewMovieState currentFilm: film.
	aWindow dynamicChange: ViewMovieState ]