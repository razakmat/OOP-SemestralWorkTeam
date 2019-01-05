initialization
setUpConnection
	currentRepository := VOMongoRepository
		host: 'localhost'
		database: 'Films'.
	currentRepository enableSingleton