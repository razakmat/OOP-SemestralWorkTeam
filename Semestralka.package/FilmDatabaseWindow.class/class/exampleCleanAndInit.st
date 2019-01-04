installation
exampleCleanAndInit
	"Deletes existing database records and starts anew"
	RealFilm setUpConnection.
	self CleanAllRecords.
	RealFilm Examples1.
	self new openWithSpec