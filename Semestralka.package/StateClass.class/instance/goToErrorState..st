accessing
goToErrorState: aMessage
	myWindow dynamicChange: (ErrorState withMessage: aMessage returnTo: self class)