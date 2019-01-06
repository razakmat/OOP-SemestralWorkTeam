initialization
initializeRootWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self data.
	buttonSignOut := self newButton label: 'Sign Out (' , myWindow user nick , ')'.
	input := TextInputFieldModel new
		ghostText: 'Type ID of a movie ...';
		enabled: true.
	buttonSearch := self instantiate: (SearchButton withInputField: input)