api
signUp
	| user newUser |
	password isNil | login isNil
		ifTrue: [ self class wrongCredentials: true.
			myWindow dynamicChange: self class.
			self class wrongCredentials: false ]
		ifFalse: [ user := User selectOne: [ :each | each nick = login ].
			user
				ifNotNil: [ self class userAlreadyExists: true.
					myWindow dynamicChange: self class.
					self class userAlreadyExists: false ]
				ifNil: [ newUser := NormalUser withNick: self login withPassword: self password.
					newUser save.
					statusField text: 'User succesfully created :-)' ] ]