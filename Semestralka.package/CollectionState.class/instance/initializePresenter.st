initialization
initializePresenter
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].
	input acceptBlock: [ :aNumber | self inputText: aNumber. myWindow delete ].