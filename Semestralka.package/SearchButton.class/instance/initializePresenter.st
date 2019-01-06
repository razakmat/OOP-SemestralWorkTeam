initialization
initializePresenter
	inputField := self class inputField.
	byGenre
		activationAction: [ 
			inputField ghostText: 'Type genre of a movie...'.
			byID state: false.
			actionBlock := self genreBlock ].
	byID
		activationAction: [ 
			inputField ghostText: 'Type ID of a movie...'.
		   byGenre state: false.
			actionBlock := self idBlock ]