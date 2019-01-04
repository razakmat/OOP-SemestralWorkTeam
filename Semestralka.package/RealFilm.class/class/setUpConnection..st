initialization
setUpConnection: aDatabase
	currentRepository := VOMongoRepository
		host: 'localhost'
		database: aDatabase.
	currentRepository enableSingleton