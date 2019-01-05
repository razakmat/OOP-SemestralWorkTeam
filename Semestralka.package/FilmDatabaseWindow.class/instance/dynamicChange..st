initialization
dynamicChange: aStateClass
	self state: aStateClass.
	self needRebuild: false.
	self buildWithSpecLayout: self class defaultSpec