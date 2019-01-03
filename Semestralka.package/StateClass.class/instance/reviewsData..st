accessing
reviewsData: aNumber
	| data reviews |
	reviews := (RealFilm selectOne: [ :each | each id = aNumber ]) reviews.
	data := OrderedCollection new.
	reviews isEmpty ifTrue: [ ^ data add: 'No review has been found.'; yourself.].
	reviews do: [ :each | data add: each ].
	^ data