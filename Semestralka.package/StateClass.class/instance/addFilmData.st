accessing
addFilmData
	| data |
	data := OrderedCollection new.
	data add: 'Zadejte film ve tvaru:'.
	data add: '<name> <id of director>'.
	data add: 'list of Directors:'.
	Director selectAll do: [ :each | data add: 'ID: ', each id greaseString  ,', Name: ',each firstName, ' ', each Surname ].
	data.
	^ data