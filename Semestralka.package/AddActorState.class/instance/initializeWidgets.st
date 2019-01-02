initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: #('Zadejte actor ve formatu: <jmeno> <prijmeni> <rok narozeni>').
	buttonReturn := self newButton label: 'Return to database'.
	input := TextInputFieldModel new
		ghostText: 'Type actor info:';
		enabled: true.