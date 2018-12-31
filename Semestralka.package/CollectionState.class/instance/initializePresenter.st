initialization
initializePresenter
	buttonReturn action: [ myWindow dynamicChange: AdminRootState  ].
	input acceptBlock: [ :aNumber | self inputText: aNumber. myWindow dynamicChange: CollectionState ].