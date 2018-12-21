initialization
initializePresenter
	input acceptBlock: [ :aString | self addFilm: aString .input text: '' ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].