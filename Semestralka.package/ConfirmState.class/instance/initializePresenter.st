initialization
initializePresenter
	buttonYes action: [ self class toDelete remove. myWindow dynamicChange: self class returnTo ].
	buttonNo action: [ myWindow dynamicChange: self class returnTo  ].