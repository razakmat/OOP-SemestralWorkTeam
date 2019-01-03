initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonAddFilm action: [ myWindow dynamicChange: AddFilmState ].
	buttonUsers action: [ myWindow dynamicChange: ManageUsersState ].
	buttonAddDirector action: [ myWindow dynamicChange: AddDirectorState ].
	buttonAddActor action: [ myWindow dynamicChange: AddActorState ].
	buttonSignOut action: [ myWindow dynamicChange: AuthentificationState. myWindow user: User new. ]