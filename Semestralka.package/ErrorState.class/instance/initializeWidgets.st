initialization
initializeWidgets
	myWindow := self class mySecWindow.
	errorMessage := TextModel new text: self errorReceived message; disable.
	buttonReturn := self newButton label: 'Return'.