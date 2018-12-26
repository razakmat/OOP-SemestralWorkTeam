initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self addFilmData.
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte info';
		enabled: true