accessing
directorData
	| data |
	data := OrderedCollection new.
	data add: 'Born: ' , born greaseString.
	data add: 'FirstName: ' , firstName.
	data add: 'SurName: ' , surname.
	data add: 'Films: '.
	(RealFilm selectAll select: [ : each | each director id = id ]) 
		do: [ :each | data add: Character tab asString, each name asString, ', ID = ', each id asString].
	^ data