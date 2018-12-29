initialization
initializePresenter
	inputName acceptBlock: [ :aString | newDirector firstName: aString. ].
	inputSurname acceptBlock: [ :aString | newDirector Surname:  aString ]. 
	inputYear acceptBlock: [ :aYear | newDirector born: aYear greaseInteger ]. 
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].
	buttonAdd action: [ 
		self addDirector.
		(MyWindow1 new: AddDirectorState) openWithSpec . myWindow delete 
		]