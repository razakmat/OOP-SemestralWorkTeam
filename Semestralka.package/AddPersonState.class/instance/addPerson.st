adding
addPerson
	newPerson firstName isNil | newPerson surname isNil | newPerson born isNil
		ifTrue: [ AddObjectWithMissingValuesError signal ]
		ifFalse: [ self addNew ]