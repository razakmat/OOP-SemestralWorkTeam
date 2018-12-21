initialization
initializePresenter
	input acceptBlock: [ :aNumber | self inputText: aNumber greaseInteger. myWindow delete ].
	buttonReturn action: [ MyWindow1 new openWithSpec . myWindow delete ].
	buttonDirector action: [ 
		DirectorState director: (Film selectOne: [ :each | each id = self class id ]) director.
		(MyWindow1 new: DirectorState) openWithSpec . myWindow delete ].