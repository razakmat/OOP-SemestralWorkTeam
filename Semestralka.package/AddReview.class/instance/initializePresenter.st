initialization
initializePresenter
	input acceptBlock: [: anInput |
		 (Film selectOne: [ :each | each id = (SingleState id) ] ) addReview: 
			MyWindow1 user nick asString, ' wrote: <', anInput asString, '>'; save.
		(MyWindow1 new: AddReview ) openWithSpec .
		myWindow delete ].
	buttonReturn action: [ (MyWindow1 new: SingleState ) openWithSpec . myWindow delete ].