initialization
initializePresenter
	input
		acceptBlock: [ :aNumber | 
			self inputText: aNumber greaseInteger.
			myWindow dynamicChange: self class ].
	buttonReturn action: [ myWindow dynamicChange: MyWindow1 user defaultAuthenticatedState ].
	buttonDirector
		action: [ DirectorState director: self class currentFilm director.
			myWindow dynamicChange: DirectorState ].
	MyWindow1 user reviewState currentFilm: self class currentFilm.
	buttonReview action: [ myWindow dynamicChange: MyWindow1 user reviewState ]