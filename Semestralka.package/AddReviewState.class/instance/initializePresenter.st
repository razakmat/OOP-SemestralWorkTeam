initialization
initializePresenter
	input
		acceptBlock: [ :anInput | 
			[ SingleState currentFilm
				addReview: myWindow user nick asString , ' wrote: <' , anInput asString , '>';
				save.
			myWindow dynamicChange: self class ]
				on: AddReviewError
				do:
					[ :e | Transcript show: e message asString	"myWindow dynamicChange: (ErrorState text: e message returnToState: self class)" ] ].
	buttonReturn action: [ myWindow dynamicChange: SingleState ]