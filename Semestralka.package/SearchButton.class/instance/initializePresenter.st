initialization
initializePresenter
	byGenre activationAction: [ actionBlock := [ :aString :aWindow| CollectionState genre: aString asSymbol.
	aWindow dynamicChange: CollectionState]].
	byID activationAction: [ actionBlock :=  [ :aNumber :aWindow |  
		|film|
		film := (RealFilm selectOne: [:each| each id = aNumber greaseInteger ]).
		film ifNil: [ film := AbstractFilm empty ]. 
		SingleState currentFilm: film.
	aWindow dynamicChange: SingleState] ]
