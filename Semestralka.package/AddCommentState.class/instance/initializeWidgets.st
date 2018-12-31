initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self data.
	inputComment := TextInputFieldModel new
		ghostText: 'Commentary';
		autoAccept: true;
		enabled: true.
	buttonReturn := self newButton label: 'Return'.
	buttonAdd := self newButton label: 'Add'