initialization
initializePresenter
	byGenre activationAction: [ actionBlock := [ :aString | CollectionState genre: aString asSymbol.
	(MyWindow1 new: CollectionState) openWithSpec]].
	byID activationAction: [ actionBlock :=  [ :aNumber | SingleState id: aNumber greaseInteger .
	(MyWindow1 new: SingleState) openWithSpec] ]
