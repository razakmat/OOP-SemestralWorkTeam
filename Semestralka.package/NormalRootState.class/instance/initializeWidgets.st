initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items:  self data.
	buttonAddComment := self newButton label: 'Add a Comment'.
	buttonSearch := self instantiate: SearchButton.
	input := TextInputFieldModel new
		ghostText: 'Zadejte ID/zanr filmu';
		enabled: true.