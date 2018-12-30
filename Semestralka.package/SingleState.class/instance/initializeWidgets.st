initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self singleData: self class id).
	buttonReturn := self newButton label: 'Return'.
	buttonDirector := self newButton label: 'Show director'.
	buttonReview := self newButton label: 'Add review'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.