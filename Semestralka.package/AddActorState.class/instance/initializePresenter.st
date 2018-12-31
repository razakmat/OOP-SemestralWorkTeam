initialization
initializePresenter
	input acceptBlock: [ :aString | self addActor: aString .input text: '' ].
	buttonReturn action: [ myWindow dynamicChange: AdminRootState  ].