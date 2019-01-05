accessing
genreBlock
  ^ [ :aString :aWindow| CollectionState genre: aString asSymbol.
	aWindow dynamicChange: CollectionState]