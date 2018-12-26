accessing
singledata: aNumber
	| data film |
	film := Film selectOne: [ :each | each id = aNumber ].
	data := OrderedCollection new.
	data add: 'ID: ' , film id greaseString.
	data add: 'Name: ' , film name.
	data add: 'Director: ' , film director.
	^ data