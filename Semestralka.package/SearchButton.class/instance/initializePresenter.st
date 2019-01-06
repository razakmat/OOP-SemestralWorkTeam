initialization
initializePresenter
	byGenre activationAction: [ actionBlock := self genreBlock].
	byID activationAction: [ actionBlock := self idBlock]
