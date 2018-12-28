as yet unclassified
signUp
	|user|
	user := User selectOne: [ :each | each nick = login & (each password = password) ].
		user ifNil: [ (MyWindow1 new: AuthentificationState) openWithSpec. myWindow delete ] 
		ifNotNil: [ (MyWindow1 new: WholeDatabaseState as: user ) openWithSpec. myWindow delete
						  ]