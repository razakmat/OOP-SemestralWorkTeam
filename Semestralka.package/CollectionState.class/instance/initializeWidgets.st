initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self genreCollection: self class genre).
	buttonReturn := self newButton label: 'Return to database'.
	input := TextInputFieldModel new
		ghostText: 'Type your prefered genre:';
		enabled: true.