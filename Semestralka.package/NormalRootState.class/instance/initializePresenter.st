initialization
initializePresenter
	| id |
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonSignOut action: [ myWindow dynamicChange: AuthentificationState ].
	buttonViewFilm
		action: [ 
			screen selectedItem isNil ifTrue: [ SingleState currentFilm: AbstractFilm empty ]
			ifFalse: [  id := self selectedIdOnScreen asNumber.
			SingleState currentFilm: (RealFilm selectOne: [ :aFilm | aFilm id = id ]) ].
			myWindow dynamicChange: SingleState ]