initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  (self directorData: self class director).
	buttonReturn := self newButton label: 'Return to movie'.
	input := TextInputFieldModel new
		ghostText: 'Type movie ID';
		enabled: true.