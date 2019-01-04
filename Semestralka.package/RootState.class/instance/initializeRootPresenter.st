initialization
initializeRootPresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonSignOut
		action: [ myWindow dynamicChange: AuthenticationState.
			myWindow user: User new ]