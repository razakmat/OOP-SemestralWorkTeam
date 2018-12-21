initialization
initializePresenter
	input acceptBlock: [ :aString | self addDirector: aString .input text: '' ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].