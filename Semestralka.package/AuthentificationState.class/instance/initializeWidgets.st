initialization
initializeWidgets
	myWindow := self class mySecWindow.
	buttonSignUp := self newButton label: 'Sign Up'.
	inputLogin := TextInputFieldModel new
		ghostText: 'login (type: test)';
		autoAccept: true;
		enabled: true.
	inputPassword := TextInputFieldModel new
		ghostText: 'password (type: 123)';
		autoAccept: true;
		encrypted: true;
		enabled: true.