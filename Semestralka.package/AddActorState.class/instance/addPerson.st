adding
addPerson
	(newPerson firstName isNil | newPerson surname isNil | newPerson born isNil) ifTrue: 
		[ self error: 'can''t add an actor with missing values' ] 
	ifFalse: [  
	newPerson id: (Actor selectAll)size + 1.
	newPerson save
	]