initialization
initializePresenter
	input acceptBlock: [ input text: '' ].
	buttonReturn action: [ (MyWindow1 new: SingleState ) openWithSpec . myWindow delete ].