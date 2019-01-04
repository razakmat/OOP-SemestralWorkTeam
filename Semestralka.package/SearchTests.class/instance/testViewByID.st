tests
testViewByID
	self assert: true equals: false.
	"testViewByID
		| currentState window |
	self setUpConnection.
	window := MyWindow1 new: AuthentificationState.
	currentState := window state.
	currentState
		loginPassed: 'normal';
		passwordPassed: 'normal'.
	currentState buttonLogInAuth performAction.
	self assert: window state class equals: NormalRootState.
	currentState := window state.
	currentState inputText: 1.
	currentState buttonSearch byID performAction.
	self assert: window state class equals: SingleState.
	self assert: window state class currentFilm equals: (RealFilm selectOne: [ :aFilm | aFilm id = 1 ]).

	self cleanTest"