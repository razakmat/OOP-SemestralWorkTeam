initialization
initializeRootWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self data.
	buttonSearch := self instantiate: SearchButton.
	buttonSignOut := self newButton label: 'Sign Out (' , myWindow user nick , ')'.
	input := TextInputFieldModel new
		ghostText: 'Type ID/genre of a movie ...';
		enabled: true