initialization
initializePresenter
	byGenre activationAction: [ actionBlock := [ :aString :aWindow| CollectionState genre: aString asSymbol.
	aWindow dynamicChange: CollectionState]].
	byID activationAction: [ actionBlock :=  [ :aNumber :aWindow | SingleState id: aNumber greaseInteger .
	aWindow dynamicChange: SingleState] ]
