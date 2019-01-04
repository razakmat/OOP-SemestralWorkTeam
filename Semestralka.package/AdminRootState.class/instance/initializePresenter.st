initialization
initializePresenter
	self initializeRootPresenter.
	buttonAddFilm action: [ myWindow dynamicChange: AddFilmState ].
	buttonUsers action: [ myWindow dynamicChange: ManageUsersState ].
	buttonAddDirector action: [ myWindow dynamicChange: AddDirectorState ].
	buttonAddActor action: [ myWindow dynamicChange: AddActorState ].