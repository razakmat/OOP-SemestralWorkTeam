printing
printOn: aStream
	aStream
		nextPutAll:
			firstName asString , ' ' , surname asString , ', ' , born asString
				, ', ID = ';
		nextPutAll: id asString