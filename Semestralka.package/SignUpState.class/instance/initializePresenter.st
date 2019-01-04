initialization
initializePresenter
	inputLogin acceptBlock: [ :aLogin | self loginPassed: aLogin asString].
	inputPassword  acceptBlock: [ :aPassword | self passwordPassed: aPassword asString].
	buttonReturn action: [ myWindow dynamicChange: AuthenticationState ].
	buttonSignUp action: [ self signUp ]