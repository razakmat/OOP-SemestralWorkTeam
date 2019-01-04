initialization
setUpConnection
	| repository |
	repository := VOMongoRepository
		host: 'localhost'
		database: 'Films'.
	repository enableSingleton.