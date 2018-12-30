initialization
initializePresenter
	input acceptBlock: [: anInput |
		 (Film selectOne: [ :each | each id = (SingleState id) ] ) addReview: 
			MyWindow1 user nick asString, ' wrote: <', anInput asString, '>'; save.
		myWindow dynamicChange: AddReviewState.
		 ].
	buttonReturn action: [ myWindow dynamicChange: SingleState ].