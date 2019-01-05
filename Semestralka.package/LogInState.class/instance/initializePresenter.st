initialization
initializePresenter
	inputLogin acceptBlock: [ :aLogin | self loginPassed: aLogin asString].
	inputPassword  acceptBlock: [ :aPassword | self passwordPassed: aPassword asString].
	buttonLogInAuth action: [ self logInAuth ].
	buttonSignUp action: [ myWindow dynamicChange: SignUpState ]