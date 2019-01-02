initialization
initializePresenter
	inputLogin acceptBlock: [ :aLogin | self loginPassed: aLogin asString].
	inputPassword  acceptBlock: [ :aPassword | self passwordPassed: aPassword asString].
	buttonSignUp action: [ self signUp ].
