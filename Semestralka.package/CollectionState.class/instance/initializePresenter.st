initialization
initializePresenter
	buttonReturn action: [ myWindow dynamicChange: myWindow user defaultAuthenticatedState ].
	input
		acceptBlock: [ :aNumber | 
			self inputText: aNumber.
			myWindow dynamicChange: CollectionState ]