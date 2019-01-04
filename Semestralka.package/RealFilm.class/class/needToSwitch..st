initialization
needToSwitch: aDatabase
	^ (currentRepository isNil or: [currentRepository databaseName ~= aDatabase] )
	