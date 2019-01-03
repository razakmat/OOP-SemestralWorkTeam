initialization
initializeWidgets
	myWindow := self class mySecWindow.
	inputLogin := TextInputFieldModel new
		ghostText: 'nickname';
		autoAccept: true;
		enabled: true.
	inputPassword := TextInputFieldModel new
		ghostText: 'password';
		autoAccept: true;
		encrypted: true;
		enabled: true.
	statusField := TextModel new
		text: 'Create new user.';
		disable.
	buttonSignUp := self newButton label: 'Register new user'.
	buttonReturn := self newButton label: 'Return to login'.

	self class missingCredentials
		ifNotNil: [ self class missingCredentials
				ifTrue: [ statusField text: 'You must fill both fields!' ] ].

	self class userAlreadyExists
		ifNotNil: [ self class userAlreadyExists
				ifTrue: [ statusField text: 'User already exists!' ] ]