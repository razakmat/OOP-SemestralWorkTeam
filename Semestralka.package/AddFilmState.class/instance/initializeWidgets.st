initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self filmData.
	buttonReturn := self newButton label: 'Return to database'.
	buttonAdd := self newButton label: 'Add film'.
	buttonAddActor  := self newButton label: 'Add selected actor'.
	inputName := TextInputFieldModel new
		ghostText: 'Name';
		autoAccept: true;
		enabled: true.
	inputGenre := TextInputFieldModel new
		ghostText: 'Genre';
		autoAccept: true;
		entryCompletion: (self entryCompletion: 
						(RealFilm selectAll collect: [:each | each genre asString]) asSet 															asOrderedCollection );
		enabled: true.
	inputDirector := TextInputFieldModel new
		ghostText: 'Director ID';
		autoAccept: true;
		entryCompletion: (self entryCompletion: (Director selectAll collect: [:each | each asString]));
		enabled: true