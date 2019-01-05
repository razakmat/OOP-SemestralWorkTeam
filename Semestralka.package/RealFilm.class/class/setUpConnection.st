initialization
setUpConnection
	"(self needToSwitch: 'Films') ifTrue: [ self setUpConnection: 'Films' ]"
	self setUpConnection: 'Films'