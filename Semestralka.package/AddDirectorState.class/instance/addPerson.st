adding
addPerson
	(newPerson firstName isNil | newPerson surname isNil | newPerson born isNil) ifTrue: 
		[ self error: 'can''t add a director with missing values' ] 
	ifFalse: [  
	newPerson id: (Director selectAll)size + 1.
	newPerson save 
	]