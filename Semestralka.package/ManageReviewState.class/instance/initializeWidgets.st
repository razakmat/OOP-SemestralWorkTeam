initialization
initializeWidgets
	myWindow := self class mySecWindow.
	screen := ListModel new.
	self class currentFilm ifNil: [ self class currentFilm: AbstractFilm empty ].
	screen items: self class currentFilm reviewsData.
	buttonReturn := self newButton label: 'Return to movie'.
	buttonDelete := self newButton label: 'Delete selected comment'.