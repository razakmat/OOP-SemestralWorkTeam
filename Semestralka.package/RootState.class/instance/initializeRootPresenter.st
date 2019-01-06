initialization
initializeRootPresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonSignOut
		action: [ myWindow dynamicChange: LogInState.
			myWindow user: User new ]