initialization
initializeWidgets
	text := TextModel new text: 'Are you sure?'; disable.
	myWindow := self class mySecWindow.
	buttonYes := self newButton label: 'Yes'.
	buttonNo := self newButton label: 'No'.