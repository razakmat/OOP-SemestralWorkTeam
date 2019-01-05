example data
setUpTestConnection
	"(self needToSwitch: 'Films-Tests') ifTrue: [ self setUpConnection: 'Films-Tests']."
	self setUpConnectionTest