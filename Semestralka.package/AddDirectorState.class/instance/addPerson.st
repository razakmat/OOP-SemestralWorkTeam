adding
addPerson
	newPerson firstName isNil | newPerson surname isNil | newPerson born isNil
		ifTrue: [ AddObjectWithMissingValuesError signal ]
		ifFalse: [ newPerson id: Director selectAll size + 1.
			newPerson save ]