accessing
userData
	^ ((User selectAll select: [ :each | each nick ~= myWindow user nick ]) asOrderedCollection 
		sort: [ :a :b | a nick < b nick ]) collect: [ :each | each asString , ': ' , each nick ]