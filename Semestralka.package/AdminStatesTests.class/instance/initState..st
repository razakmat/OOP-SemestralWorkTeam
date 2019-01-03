initialization
initState: aState
	|newWindow|
	newWindow := MyWindow1 new: aState.
	newWindow user: (User selectOne: [ :each | each nick = 'admin' & (each password = 'admin')  ]).
	^newWindow