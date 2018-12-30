initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. 
		myWindow dynamicChange: SingleState  ].
	buttonReturn action: [ myWindow dynamicChange: WholeDatabaseState  ].
	buttonDirector action: [ 
		DirectorState director: (Film selectOne: [ :each | each id = self class id ]) director.
		myWindow dynamicChange: DirectorState ].
	buttonReview action: [ 
		myWindow dynamicChange: AddReviewState ].