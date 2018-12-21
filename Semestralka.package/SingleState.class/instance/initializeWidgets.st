initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self singledata: self class id).
	buttonReturn := self newButton label: 'Return'.
	buttonDirector := self newButton label: 'Show director'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.