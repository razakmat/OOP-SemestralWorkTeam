instance creation
new: aState as: aUser
	state := aState.
	user := aUser.
	^ self basicNew initialize