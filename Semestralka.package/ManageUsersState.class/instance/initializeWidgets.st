initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self userData.
	buttonReturn := self newButton label: 'Return to database'.
	buttonDelete := self newButton label: 'Delete selected user'.