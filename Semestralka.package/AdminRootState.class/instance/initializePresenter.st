initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonAddFilm action: [ myWindow dynamicChange: AddFilmState ].
	buttonAddDirector action: [ myWindow dynamicChange: AddDirectorState ].
	buttonAddActor action: [ myWindow dynamicChange: AddActorState ].
	buttonSignOut action: [ myWindow dynamicChange: AuthentificationState. MyWindow1 user: User new. ]