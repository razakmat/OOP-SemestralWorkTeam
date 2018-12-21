adding
addActor: aString
	| parts |
	parts := aString substrings.

	Actor new
	id: (Actor selectAll)size + 1;
	firstName: (parts at: 1);
	Surname: (parts at: 2);
	born: (parts at: 3);
	save.