initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. 
		myWindow dynamicChange: SingleState  ].
	buttonReturn action: [ myWindow dynamicChange: AdminRootState  ].
	buttonDirector action: [ 
		DirectorState director: self class currentFilm director.
		myWindow dynamicChange: DirectorState ].
	buttonReview action: [ 
		myWindow dynamicChange: AddReviewState ].