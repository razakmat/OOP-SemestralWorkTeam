initialization
initState: aState
	|newWindow|
	newWindow := FilmDatabaseWindow new: aState.
	newWindow user: (User selectOne: [ :each | each nick = 'admin' & (each password = 'admin')  ]).
	^newWindow