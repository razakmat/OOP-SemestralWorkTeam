initialization
initializePresenter
	buttonReturn action: [ myWindow dynamicChange: MyWindow1 user defaultAuthenticatedState ].
	input
		acceptBlock: [ :aNumber | 
			self inputText: aNumber.
			myWindow dynamicChange: CollectionState ]