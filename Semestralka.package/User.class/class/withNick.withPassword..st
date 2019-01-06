instance creation
withNick: aNick withPassword: aPassword
	|user|
	user := self new.
	user nick: aNick.
	user password: aPassword.
	^ user