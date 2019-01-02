initialization
initializeWidgets
	myWindow := self class mySecWindow.
	buttonSignUp := self newButton label: 'Sign Up'.
	inputLogin := TextInputFieldModel new
		ghostText: 'login (type: admin or test)';
		autoAccept: true;
		enabled: true.
	inputPassword := TextInputFieldModel new
		ghostText: 'password (type: admin or 123)';
		autoAccept: true;
		encrypted: true;
		enabled: true.
	credentialsField := TextModel new
		text: 'Enter your credentials';
		disable.
	self class wrongCredentials ifNotNil: [ 
		self class wrongCredentials ifTrue: [ credentialsField text: 'Wrong credentials!!!'] ]