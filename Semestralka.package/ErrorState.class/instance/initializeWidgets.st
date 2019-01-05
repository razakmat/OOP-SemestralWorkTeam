initialization
initializeWidgets
	myWindow := self class mySecWindow.
	errorReceived := self class errorReceived.
	errorMessage := TextModel new text: errorReceived message; disable.
	buttonReturn := self newButton label: 'Return'.