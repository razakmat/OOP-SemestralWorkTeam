accessing
singleData: aNumber
	| data film |
	film := RealFilm selectOne: [ :each | each id = aNumber ].
	data := OrderedCollection new.
	film ifNil: [ ^ data add: 'No film has been found.'; yourself.].
	data add: 'ID: ' , film id greaseString.
	data add: 'Name: ' , film name.
	data add: 'Director: ' , film director firstName, ' ',film director Surname.
	data add: 'Genre: ' , film genre asString.
	^ data