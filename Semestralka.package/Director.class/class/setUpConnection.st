initialization
setUpConnection
	| repository |
	repository := VOMongoRepository
		host: 'localhost'
		database: 'Directors'.
	repository enableSingleton.