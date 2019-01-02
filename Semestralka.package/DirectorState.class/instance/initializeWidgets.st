initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self directorData: self class director).
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.