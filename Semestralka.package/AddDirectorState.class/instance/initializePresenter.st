initialization
initializePresenter
	inputName acceptBlock: [ :aString | newDirector firstName: aString. ].
	inputSurname acceptBlock: [ :aString | newDirector Surname:  aString ]. 
	inputYear acceptBlock: [ :aYear | newDirector born: aYear greaseInteger ]. 
	buttonReturn action: [ myWindow dynamicChange: AdminRootState ].
	buttonAdd action: [ 
		self addDirector.
		myWindow dynamicChange: AddDirectorState 
		]