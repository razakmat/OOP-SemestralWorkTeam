initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonAddFilm action: [ (MyWindow1 new: AddFilmState) openWithSpec. myWindow delete ].
	buttonAddDirector action: [ (MyWindow1 new: AddDirectorState) openWithSpec. myWindow delete ].
	buttonAddActor action: [ (MyWindow1 new: AddActorState) openWithSpec. myWindow delete ]
