accessing
directordata: aDirector
	| data films |
	"films := Film selectMany: [ :each | (each director firstName = aDirector firstName)  ]."
	data := OrderedCollection new.
	data add: 'Born: ' , aDirector born greaseString.
	data add: 'FirstName: ' , aDirector firstName.
	data add: 'SurName: ' , aDirector Surname.
	
	^ data