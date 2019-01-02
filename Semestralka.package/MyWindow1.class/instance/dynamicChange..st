initialization
dynamicChange: aStateClass
	self state: aStateClass.
	self items: (self instantiate: aStateClass).
	self needRebuild: false.
	self buildWithSpecLayout: self class defaultSpec