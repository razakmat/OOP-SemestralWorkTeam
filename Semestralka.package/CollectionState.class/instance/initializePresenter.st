initialization
initializePresenter
	buttonReturn action: [ myWindow dynamicChange: WholeDatabaseState  ].
	input acceptBlock: [ :aNumber | self inputText: aNumber. myWindow dynamicChange: CollectionState ].