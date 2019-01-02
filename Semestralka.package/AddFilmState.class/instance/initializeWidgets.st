initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self addFilmData.
	buttonReturn := self newButton label: 'Return to database'.
	buttonAdd := self newButton label: 'Add'.
	inputName := TextInputFieldModel new
		ghostText: 'Name';
		autoAccept: true;
		enabled: true.
	inputGenre := TextInputFieldModel new
		ghostText: 'Genre';
		autoAccept: true;
		enabled: true.
	inputDirector := TextInputFieldModel new
		ghostText: 'Director ID';
		autoAccept: true;
		enabled: true.