accessing
getActorData: aCollection
	| data |
	data := OrderedCollection new.
	data add: 'list of actors:'.
	aCollection do: [ :each | data add: 'ID: ', each id greaseString  ,', Name: ',each firstName, ' ', each surname ].
	data.
	^ data