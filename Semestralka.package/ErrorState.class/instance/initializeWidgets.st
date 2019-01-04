initialization
initializeWidgets
	myWindow := self class mySecWindow.
	errorMessage := TextModel new text: self class message; disable.
	buttonReturn := self newButton label: 'Return'.