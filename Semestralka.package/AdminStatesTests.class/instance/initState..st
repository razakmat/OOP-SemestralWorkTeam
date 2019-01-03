initialization
initState: aState
	MyWindow1 user: (User selectOne: [ :each | each nick = 'admin' & (each password = 'admin')  ]).
	^ MyWindow1 new: aState