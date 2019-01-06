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
		action: [ myWindow dynamicChange: myWindow user defaultAuthenticatedState ].
	buttonAdd
		action: [ [self addFilm.
			myWindow dynamicChange: self class] on: AddObjectWithMissingValuesError do: [ :e | self goToErrorState: e ] ].
	buttonAddActor
		action: [ 
			screen selectedItem isNil ifFalse: [  screen selectedIndex > 1 ifTrue: [ 
			newFilm addActor: (Actor selectOne: [:each | each id = self selectedIdOnScreen asNumber]).
					]
				].
			screen items: (self getActorData:(Actor selectAll difference: newFilm actors))
			]