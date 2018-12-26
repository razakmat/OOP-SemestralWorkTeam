initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self directordata: self class director).
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.