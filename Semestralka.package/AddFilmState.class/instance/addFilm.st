adding
addFilm
	(newFilm director isNil | newFilm name isNil | newFilm genre isNil ) ifTrue: 
								[ self error: 'can''t create a film with missing values' ].
	newFilm
	id: (RealFilm selectAll)size + 1;
	save