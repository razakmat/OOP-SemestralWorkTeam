adding
addFilm
	newFilm director isNil | newFilm name isNil | newFilm genre isNil
		ifTrue: [ AddObjectWithMissingValuesError signal ]
		ifFalse: [ newFilm
				id: self findID;
				save ]