initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  self data.
	buttonViewFilm := self newButton label: 'View the selected film'.
	buttonSearch := self instantiate: SearchButton.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID/zanr filmu';
		enabled: true.