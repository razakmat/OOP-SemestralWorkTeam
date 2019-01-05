accessing
userData
	^ ((User selectAll select: [ :each | each nick ~= myWindow user nick ])
		sort: [ :a :b | a nick < b nick ]) collect: [ :each | each role , ': ' , each nick ]