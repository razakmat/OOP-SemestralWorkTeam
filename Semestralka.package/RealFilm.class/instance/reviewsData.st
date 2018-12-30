as yet unclassified
reviewsData
	| data |
	data := OrderedCollection new.
	reviews isEmpty ifTrue: [ ^ data add: 'No review has been found.'; yourself.].
	reviews do: [ :each | data add: each ].
	^ data