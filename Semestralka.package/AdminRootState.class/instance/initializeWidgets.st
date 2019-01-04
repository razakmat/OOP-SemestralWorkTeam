initialization
initializeWidgets
	self initializeRootWidgets.
	buttonAddActor := self newButton label: 'Add Actor'.
	buttonAddDirector := self newButton label: 'Add Director'.
	buttonAddFilm := self newButton label: 'Add Film'.
	buttonRemove := self newButton label: 'Remove Film'.
	buttonUsers := self newButton label: 'Manage users'