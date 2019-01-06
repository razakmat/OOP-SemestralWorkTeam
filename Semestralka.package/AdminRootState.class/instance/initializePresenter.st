initialization
initializePresenter
	self initializeRootPresenter.
	buttonAddFilm action: [ myWindow dynamicChange: AddFilmState ].
	buttonUsers action: [ myWindow dynamicChange: ManageUsersState ].
	buttonAddDirector action: [ myWindow dynamicChange: AddDirectorState ].
	buttonRemove action: [ (screen selectedItem isNotNil ) ifTrue: [
				self goToConfirmState: (RealFilm selectOne: [ :each | each id = self selectedFilmOnScreen ]).
				].
			  screen items: self data].
	buttonAddActor action: [ myWindow dynamicChange: AddActorState ].