initialization
initializePresenter
	| id |
	self initializeRootPresenter.
	buttonViewFilm
		action: [ screen selectedItem isNil
				ifTrue: [ ViewMovieState currentFilm: AbstractFilm empty ]
				ifFalse: [ id := self selectedIdOnScreen asNumber.
					ViewMovieState currentFilm: (RealFilm selectOne: [ :aFilm | aFilm id = id ]) ].
			myWindow dynamicChange: ViewMovieState ]