initialization
initializePresenter
	| id |
	self initializeRootPresenter.
	buttonViewFilm
		action: [ screen selectedItem isNil
				ifTrue: [ ViewFilmState currentFilm: AbstractFilm empty ]
				ifFalse: [ id := self selectedIdOnScreen asNumber.
					ViewFilmState currentFilm: (RealFilm selectOne: [ :aFilm | aFilm id = id ]) ].
			myWindow dynamicChange: ViewFilmState ]