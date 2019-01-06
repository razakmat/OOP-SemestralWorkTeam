initialization
initializeWidgets
	text := TextModel new text: 'Are you sure you want to delete ', self class toDelete printInfo, '?'; disable.
	myWindow := self class mySecWindow.
	buttonYes := self newButton label: 'Yes'.
	buttonNo := self newButton label: 'No'.