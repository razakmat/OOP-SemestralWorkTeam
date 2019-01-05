initialization
initializePresenter
	inputName acceptBlock: [ :aString | newPerson firstName: aString ].
	inputSurname acceptBlock: [ :aString | newPerson surname: aString ].
	inputYear acceptBlock: [ :aYear | newPerson born: aYear greaseInteger ].
	buttonReturn action: [ myWindow dynamicChange: AdminRootState ].
	buttonAdd
		action: [ [ self addPerson.
			myWindow dynamicChange: self class ]
				on: AddObjectWithMissingValuesError
				do: [ :e | self goToErrorState: e message ] ]