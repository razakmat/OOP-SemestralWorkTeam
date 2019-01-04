example data
setUpTestConnection
	| repository |
	repository := VOMongoRepository host: 'localhost' database: 'Films-Tests'.