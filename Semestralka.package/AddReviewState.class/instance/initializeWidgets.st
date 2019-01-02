initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: SingleState currentFilm reviewsData.
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Napiste user review';
		enabled: true.