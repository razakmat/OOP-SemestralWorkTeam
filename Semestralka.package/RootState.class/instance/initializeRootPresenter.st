initialization
initializeRootPresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonSignOut
		action: [ myWindow dynamicChange: AuthentificationState.
			myWindow user: User new ]