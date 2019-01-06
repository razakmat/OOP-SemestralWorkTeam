accessing
inputText: aNumber
	|aFilm|
	aFilm := RealFilm selectOne: [ :each | each id = aNumber ].
	aFilm ifNil: [ aFilm := AbstractFilm empty  ].
	self class currentFilm: aFilm