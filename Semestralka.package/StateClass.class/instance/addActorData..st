accessing
addActorData: aCollection
	| data |
	data := OrderedCollection new.
	data add: 'list of actors:'.
	aCollection do: [ :each | data add: 'ID: ', each id greaseString  ,', Name: ',each firstName, ' ', each Surname ].
	data.
	^ data