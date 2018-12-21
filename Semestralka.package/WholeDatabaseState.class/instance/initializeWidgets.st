initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  self data.
	buttonAddFilm := self newButton label: 'Add Film'.
	buttonAddDirector := self newButton label: 'Add Director'.
	buttonAddActor := self newButton label: 'Add Actor'.
	buttonRemove := self newButton label: 'Remove Film'.
	buttonSearch := self newButton label: 'Search'.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID filmu';
		enabled: true.