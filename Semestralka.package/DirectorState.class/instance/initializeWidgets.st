initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  self class director directorData.
	buttonReturn := self newButton label: 'Return to movie'.