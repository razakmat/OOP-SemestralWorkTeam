accessing
goToErrorState: anError
	myWindow dynamicChange: (ErrorState withError: anError returnTo: self class)