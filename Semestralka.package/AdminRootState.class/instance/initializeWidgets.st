initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self data.
	buttonAddActor := self newButton label: 'Add Actor'.
	buttonAddDirector := self newButton label: 'Add Director'.
	buttonAddFilm := self newButton label: 'Add Film'.
	buttonRemove := self newButton label: 'Remove Film'.
	buttonSearch := self instantiate: SearchButton.
	buttonSignOut := self newButton label: 'Sign Out (', MyWindow1 user nick, ')'.
	input := TextInputFieldModel new
		ghostText: 'Type ID/genre of a movie ...';
		enabled: true