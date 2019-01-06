tests
testCorrectRole
	| a n |
	a := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	n := NormalUser
		withNick: 'mates-OOP'
		withPassword: '321aninahodu!'.
	self assert: a class equals: AdminUser.
	self assert: n class equals: NormalUser
	