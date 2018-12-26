tests
testCorrectRole
	| u n |
	u := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	n := NormalUser
		withNick: 'mates-OOP'
		withPassword: '321aninahodu!'.
	self assert: u role = 'admin'.
	self assert: n role = 'normal'
	