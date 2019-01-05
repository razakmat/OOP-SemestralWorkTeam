initialization
initializeWidgets
	myWindow := self class mySecWindow.
	buttonLogInAuth := self newButton label: 'Log in'.
	inputLogin := TextInputFieldModel new
		ghostText: 'login (type: admin or test)';
		autoAccept: true;
		enabled: true.
	inputPassword := TextInputFieldModel new
		ghostText: 'password (type: admin or 123)';
		autoAccept: true;
		encrypted: true;
		enabled: true.
	statusField := TextModel new
		text: 'Enter your credentials';
		disable.
	buttonSignUp := self newButton label: 'Sign Up'.
	self class wrongCredentials ifNotNil: [ 
		self class wrongCredentials ifTrue: [ statusField text: 'Wrong credentials!!!'] ]