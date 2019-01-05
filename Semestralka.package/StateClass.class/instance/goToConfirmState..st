accessing
goToConfirmState: toRemove
	myWindow
		dynamicChange: (ConfirmState toDelete: toRemove withReturnTo: self class)