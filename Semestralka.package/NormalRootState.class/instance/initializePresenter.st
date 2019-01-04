initialization
initializePresenter
	| id |
	self initializeRootPresenter.
	buttonViewFilm
		action: [ screen selectedItem isNil
				ifTrue: [ SingleState currentFilm: AbstractFilm empty ]
				ifFalse: [ id := self selectedIdOnScreen asNumber.
					SingleState currentFilm: (RealFilm selectOne: [ :aFilm | aFilm id = id ]) ].
			myWindow dynamicChange: SingleState ]