initialization
initializeWidgets
	myWindow := self class mySecWindow.
	
	screen := ListModel new.
	screen items: self addDirectorData.
	
	buttonReturn := self newButton label: 'Return to database'.
	buttonAdd := self newButton label: 'Add'.
	inputName := TextInputFieldModel new
		ghostText: 'First Name';
		autoAccept: true;
		enabled: true.
	inputSurname := TextInputFieldModel new
		ghostText: 'Surname';
		autoAccept: true;
		enabled: true.
	inputYear := TextInputFieldModel new
		ghostText: 'Birth Year';
		autoAccept: true;
		enabled: true.