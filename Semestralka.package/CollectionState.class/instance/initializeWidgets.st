initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self genreCollection: self class genre).
	buttonReturn := self newButton label: 'Return'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID zanru';
		enabled: true.