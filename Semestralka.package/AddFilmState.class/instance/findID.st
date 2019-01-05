accessing
findID
	| currentID |
	currentID := RealFilm selectAll size + 1.
	[ (RealFilm selectOne: [ :each | each id = currentID ]) isNotNil ]
		whileTrue: [ currentID := currentID + 1 ].
	^currentID