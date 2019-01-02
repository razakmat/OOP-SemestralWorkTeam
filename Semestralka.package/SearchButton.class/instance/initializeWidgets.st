initialization
initializeWidgets
	| searchButtonGroup |
	searchButtonGroup := RadioButtonGroup new.
	
	byID := self newRadioButton.
	byID label: 'View by ID'.
	searchButtonGroup  addRadioButton: byID; default: byID.

	byGenre := self newRadioButton.
	byGenre label: 'Search by Genre'.
	searchButtonGroup addRadioButton: byGenre.