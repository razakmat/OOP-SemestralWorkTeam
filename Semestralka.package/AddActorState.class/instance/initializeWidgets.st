initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: #('Zadejte actor ve formatu: <jmeno> <prijmeni> <rok narozeni>').
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte info';
		enabled: true.