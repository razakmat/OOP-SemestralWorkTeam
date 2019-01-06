initialization
initializePresenter
	input
		acceptBlock: [ :anInput | 
			ViewFilmState currentFilm
				addReview: myWindow user nick asString , ' wrote: <' , anInput asString , '>';
				save.
			myWindow dynamicChange: self class ].
	buttonReturn action: [ myWindow dynamicChange: ViewFilmState ]