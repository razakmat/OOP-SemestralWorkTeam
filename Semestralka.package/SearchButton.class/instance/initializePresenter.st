initialization
initializePresenter
	inputField := self class inputField.
	byGenre
		whenActivatedDo: [
			self initializeWidgetsGenre.
			self initializePresenter.
			inputField
				entryCompletion:
					(self
						entryCompletion: (RealFilm selectAll collect: [ :each | each genre asString ]) asSet asOrderedCollection);
				ghostText: 'Type genre of a movie...'.
			actionBlock := self genreBlock ].
	byID
		whenActivatedDo: [ 
			self initializeWidgets.
			self initializePresenter.
			inputField
				entryCompletion: nil;
				ghostText: 'Type ID of a movie...'.
			actionBlock := self idBlock ]