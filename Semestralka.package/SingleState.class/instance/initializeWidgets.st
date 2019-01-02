initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self class currentFilm singleData).
	buttonReturn := self newButton label: 'Return to database'.
	buttonDirector := self newButton label: 'Show director info'.
	buttonReview := self newButton label: 'Add review'.
	input := TextInputFieldModel new
		ghostText: 'Type ID of another movie';
		enabled: true.