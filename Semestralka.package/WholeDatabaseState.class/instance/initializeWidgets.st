initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  self data.
	buttonAdd := self newButton label: 'Add Film'.
	buttonRemove := self newButton label: 'Remove Film'.
	buttonSearch := self newButton label: 'Search'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.