printing
printOn: aStream
	aStream
		nextPutAll:
			firstName asString , ' ' , Surname asString , ', ' , born asString
				, ', ID = ';
		nextPutAll: id asString