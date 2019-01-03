initialization
initializePresenter
	input
		acceptBlock: [ :anInput | 
			SingleState currentFilm
				addReview: myWindow user nick asString , ' wrote: <' , anInput asString , '>';
				save.
			myWindow dynamicChange: self class ].
	buttonReturn
		action:
			[ myWindow dynamicChange: SingleState ]