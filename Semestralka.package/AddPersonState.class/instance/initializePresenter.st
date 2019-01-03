initialization
initializePresenter
	inputName acceptBlock: [ :aString | newPerson firstName: aString. ].
	inputSurname acceptBlock: [ :aString | newPerson  Surname:  aString ]. 
	inputYear acceptBlock: [ :aYear | newPerson  born: aYear greaseInteger ]. 
	buttonReturn action: [ myWindow dynamicChange: AdminRootState ].
	buttonAdd action: [ 
		self addPerson.
		myWindow dynamicChange: self class  
		]