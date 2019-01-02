initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self class currentFilm reviewsData.
	buttonReturn := self newButton label: 'Return to movie'.
	input := TextInputFieldModel new
		ghostText: 'Write your review:';
		enabled: true.