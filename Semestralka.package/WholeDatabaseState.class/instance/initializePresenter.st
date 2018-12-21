initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonAdd action: [ self print: 'Push Add' ].