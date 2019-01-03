accessing
addFilmData
	| data |
	data := OrderedCollection new.
	data add: 'list of actors:'.
	Actor selectAll do: [ :each | data add: 'ID: ', each id greaseString  ,', Name: ', each firstName, ' ', each Surname ].
	^ data