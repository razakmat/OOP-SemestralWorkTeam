accessing
userData
	^ (User selectAll select: [ :each | each nick ~= myWindow user nick ])
		collect: [ :each | each nick ]