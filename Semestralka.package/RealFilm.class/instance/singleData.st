as yet unclassified
singleData
	|data|
	data := OrderedCollection new.
	data add: 'ID: ' , self id greaseString.
	data add: 'Name: ' , self name.
	data add: 'Director: ' , self director firstName, ' ',self director Surname.
	data add: 'Genre: ' , self genre asString.
	^data