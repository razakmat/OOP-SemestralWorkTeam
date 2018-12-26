adding
addFilm: aString
	| parts |
	parts := aString substrings.

	Film  new
	id: (Film selectAll)size + 1;
	name: (parts at: 1);
	director: (Director selectOne: [ :each | each id = (parts at: 2) greaseInteger ]);
	save.