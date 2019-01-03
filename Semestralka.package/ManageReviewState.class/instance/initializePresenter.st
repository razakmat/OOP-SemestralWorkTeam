accessing
initializePresenter
	buttonDelete
		action:
			[
			  (self class currentFilm reviews isNotEmpty & screen selectedItem isNotNil ) ifTrue: [
				 self class currentFilm reviews removeAt: screen selectedIndex.
				 self class currentFilm save
				].
			  screen items: self class currentFilm reviewsData.
			].
	buttonReturn
		action:
			[ myWindow dynamicChange: SingleState ]