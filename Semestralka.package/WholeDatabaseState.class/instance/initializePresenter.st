initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonAddFilm action: [ self print: 'Push Add' ].