initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonAddFilm action: [ self print: 'Push Add' ].
	buttonAddDirector action: [ (MyWindow1 new: AddDirectorState) openWithSpec. myWindow delete ].