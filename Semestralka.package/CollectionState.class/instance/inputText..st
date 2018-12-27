accessing
inputText: aString
	self class genre: aString asSymbol.
	(MyWindow1 new: self class) openWithSpec