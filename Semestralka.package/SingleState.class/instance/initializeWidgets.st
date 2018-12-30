initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self class currentFilm singleData).
	buttonReturn := self newButton label: 'Return'.
	buttonDirector := self newButton label: 'Show director'.
	buttonReview := self newButton label: 'Add review'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.