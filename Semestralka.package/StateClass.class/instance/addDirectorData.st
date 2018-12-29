accessing
addDirectorData
	| data |
	data := OrderedCollection new.
	data add: 'list of Directors:'.
	Director selectAll do: [ :each | data add: 'ID: ', each id greaseString  ,', Name: ',each firstName, ' ', each Surname ].
	data.
	^ data