adding
addDirector: aString
	| parts |
	parts := aString substrings.

	Director new
	id: (Director selectAll)size + 1;
	firstName: (parts at: 1);
	Surname: (parts at: 2);
	born: (parts at: 3);
	save.