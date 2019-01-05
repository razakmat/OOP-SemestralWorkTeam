initialization
initializeRootPresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonSignOut
		action: [ myWindow dynamicChange: RegisterState.
			myWindow user: User new ]