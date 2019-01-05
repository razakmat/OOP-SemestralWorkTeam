initialization
initializePresenter
	self initializeRootPresenter.
	buttonAddFilm action: [ myWindow dynamicChange: AddFilmState ].
	buttonUsers action: [ myWindow dynamicChange: ManageUsersState ].
	buttonAddDirector action: [ myWindow dynamicChange: AddDirectorState ].
	buttonRemove
		action: [ screen selectedItem isNotNil
				ifTrue: [ (RealFilm selectOne: [ :each | each id = self selectedFilmOnScreen ]) remove ].
			screen items: self data.
			screen setSelectedIndex: 0 ].
	buttonAddActor action: [ myWindow dynamicChange: AddActorState ]