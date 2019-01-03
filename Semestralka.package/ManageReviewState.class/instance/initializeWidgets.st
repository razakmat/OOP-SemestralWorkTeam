accessing
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	screen items: self class currentFilm reviewsData.
	buttonReturn := self newButton label: 'Return to movie'.
	buttonDelete := self newButton label: 'Delete selected comment'.