as yet unclassified
logInAuth
	| user |
	user := User selectOne: [ :each | each nick = login & (each password = password) ].
	user
		ifNil: [ self class wrongCredentials: true.
			myWindow dynamicChange: self class.
			self class wrongCredentials: false ]
		ifNotNil: [ myWindow class user: user.
			myWindow dynamicChange: user defaultAuthenticatedState ]