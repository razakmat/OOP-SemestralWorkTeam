accessing
genreCollection: aGenre
	| data films|
	films := RealFilm selectMany: [ :each | each genre = aGenre ].
	data := OrderedCollection new.
	films do: [:each | data add: 'ID: ' , each id greaseString, ' Name: ' , each name, 
		' Director: ' , each director firstName, ' ', each director surname].
	data isEmpty ifTrue: [ data add: 'No films fitting genre ''', aGenre asString, '''. Try any of following genres:'.
		(RealFilm selectAll collect: [:each | each genre] ) asSet do: [:each | data add: each asString]].
	^ data