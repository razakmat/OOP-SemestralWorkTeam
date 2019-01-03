example data
setUpTestConnection
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'Films-Tests'.
	repository enableSingleton.
	
	User removeAll.
	Director RemoveRecords.
	Actor removeAll.
	RealFilm RemoveRecords.
	
	RealFilm ExamplesForTesting.