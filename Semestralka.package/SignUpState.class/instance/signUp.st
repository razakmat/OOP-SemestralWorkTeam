as yet unclassified
signUp
	| user newUser |
	"TODO login a password dat dohromady do nejakyho OR"
	"Checks if both password and login fields are set,
	if yes, checks if user exists, and if not, creates
	a new user with normal role "
	password
		ifNil: [ self class missingCredentials: true.
			myWindow dynamicChange: self class.
			self class missingCredentials: false ].
	login
		ifNil: [ self class missingCredentials: true.
			myWindow dynamicChange: self class.
			self class missingCredentials: false ]
		ifNotNil: [ user := User selectOne: [ :each | each nick = login ].
			user
				ifNotNil: [ self class userAlreadyExists: true.
					myWindow dynamicChange: self class.
					self class userAlreadyExists: false ]
				ifNil: [ newUser := NormalUser withNick: self login withPassword: self password.
					newUser save.
					statusField text: 'User succesfully created :-)' ] ]