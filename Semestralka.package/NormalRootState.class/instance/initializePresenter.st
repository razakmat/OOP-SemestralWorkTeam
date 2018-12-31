initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber ].
	buttonAddComment action: [ myWindow dynamicChange: AddCommentState ]