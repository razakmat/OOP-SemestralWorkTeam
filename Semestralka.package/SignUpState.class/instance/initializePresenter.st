initialization
initializePresenter
	inputLogin acceptBlock: [ :aLogin | self loginPassed: aLogin asString].
	inputPassword  acceptBlock: [ :aPassword | self passwordPassed: aPassword asString].
	buttonReturn action: [ myWindow dynamicChange: RegisterState ].
	buttonSignUp action: [ self signUp ]