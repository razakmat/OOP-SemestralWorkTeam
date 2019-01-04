initialization
initializePresenter
	input
		acceptBlock: [ :aNumber | 
			self inputText: aNumber greaseInteger.
			myWindow dynamicChange: self class ].
	buttonReturn action: [ myWindow dynamicChange: myWindow user defaultAuthenticatedState ].
	buttonDirector
		action: [ [DirectorState director: self class currentFilm director.myWindow dynamicChange: DirectorState] on: ShowDirectorError do: [ :e | Transcript show: e message asString "myWindow dynamicChange: (ErrorState text: e message returnToState: self class)" ].
			  ].
	myWindow user reviewState currentFilm: self class currentFilm.
	buttonReview action: [ myWindow dynamicChange: myWindow user reviewState ]