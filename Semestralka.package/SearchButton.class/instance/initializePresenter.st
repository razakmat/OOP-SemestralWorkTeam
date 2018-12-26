initialization
initializePresenter
	byGenre activationAction: [ actionBlock := [ :aNumber | CollectionState genre: aNumber.
	(MyWindow1 new: CollectionState) openWithSpec]].
	byID activationAction: [ actionBlock :=  [ :aNumber | SingleState id: aNumber.
	(MyWindow1 new: SingleState) openWithSpec] ]
