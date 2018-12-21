initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].