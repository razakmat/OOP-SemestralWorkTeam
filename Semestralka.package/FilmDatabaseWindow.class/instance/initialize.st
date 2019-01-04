initialization
initialize
	state := self class state withContext: self.
	super initialize.