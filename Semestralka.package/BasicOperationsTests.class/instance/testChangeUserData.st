tests
testChangeUserData
	| u |
	u := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	u password: 'stupidPwd42'.
	u nick: 'pepazdepa'.
	self assert: u password = 'stupidPwd42'.
	self assert: u nick = 'pepazdepa'