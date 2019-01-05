adding
addFilm
	newFilm director isNil | newFilm name isNil | newFilm genre isNil
		ifTrue: [ AddObjectWithMissingValuesError signal ]
		ifFalse: [ newFilm
				id: RealFilm selectAll size + 1;
				save ]