initialization
initializeWidgets
	myWindow := self class mySecWindow.
	buttonSignUp := self newButton label: 'Sign Up'.
	inputLogin := TextInputFieldModel new
		ghostText: 'login (type: test and RETURN)';
		enabled: true.
	inputPassword := TextInputFieldModel new
		ghostText: 'password (type: 123 and RETURN)';
		enabled: true.