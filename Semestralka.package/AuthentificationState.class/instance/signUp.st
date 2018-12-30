as yet unclassified
signUp
	|user|
	user := User selectOne: [ :each | each nick = login & (each password = password) ].
		user ifNil: [ AuthentificationState wrongCredentials: true. 
			myWindow dynamicChange: AuthentificationState.
			AuthentificationState wrongCredentials: false ] 
		ifNotNil: [ myWindow class user: user. myWindow dynamicChange: WholeDatabaseState 
						  ]