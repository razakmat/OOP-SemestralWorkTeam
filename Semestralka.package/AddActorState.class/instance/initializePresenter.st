initialization
initializePresenter
	input acceptBlock: [ :aString | self addActor: aString .input text: '' ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].