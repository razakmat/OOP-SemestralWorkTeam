initialization
initializeRootPresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	input whenGhostTextChanged: [  myWindow  needRebuild: false.
	myWindow buildWithSpecLayout: myWindow class defaultSpec  ].
	buttonSignOut
		action: [ myWindow dynamicChange: LogInState.
			myWindow user: User new ]