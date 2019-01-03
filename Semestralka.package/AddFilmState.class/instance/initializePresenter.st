initialization
initializePresenter
	inputName acceptBlock: [ :aString | newFilm name: aString ].
	inputDirector
		acceptBlock:
			[ :anID | |currentID|
			currentID := self idFromDirectorInput: anID.
			newFilm director: (Director selectOne: [ :each | each id = currentID  
			]) ].
	inputGenre acceptBlock: [ :aGenre | newFilm genre: aGenre asSymbol ].
	buttonReturn
		action: [ myWindow dynamicChange: myWindow class user defaultAuthenticatedState ].
	buttonAdd
		action: [ self addFilm.
			myWindow dynamicChange: self class ].
	buttonAddActor
		action: [ 
			screen selectedItem isNil ifFalse: [  screen selectedIndex > 1 ifTrue: [ 
			newFilm addActor: (Actor selectOne: [:each | each id = self selectedIdOnScreen asNumber]).
					]
				].
			screen items: (self addActorData:(Actor selectAll difference: newFilm actors))
			]