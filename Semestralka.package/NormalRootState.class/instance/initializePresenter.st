initialization
initializePresenter
	| id |
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonViewFilm
		action: [ id := self selectedIdOnScreen asNumber.
			SingleState currentFilm: (RealFilm selectOne: [ :aFilm | aFilm id = id ]).
			myWindow dynamicChange: SingleState ]