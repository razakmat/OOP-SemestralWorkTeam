initialization
initializePresenter
	inputComment acceptBlock: [ :aString | aString ].
	buttonAdd
		action: [ self addComment.
			myWindow dynamicChange: self class ].
	buttonReturn
		action: [ myWindow dynamicChange: myWindow class user defaultAuthenticatedState ]