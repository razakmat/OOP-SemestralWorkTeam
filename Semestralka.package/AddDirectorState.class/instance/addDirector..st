adding
addDirector: aString
	| parts |
	parts := aString substrings.

	Director new
	firstName: (parts at: 1);
	Surname: (parts at: 2);
	born: (parts at: 3);
	save.