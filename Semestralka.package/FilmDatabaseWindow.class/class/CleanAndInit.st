as yet unclassified
CleanAndInit
	"Deletes existing database records and starts anew"
	RealFilm setUpConnection.
	User removeAll.
	Director RemoveRecords.
	Actor removeAll.
	RealFilm RemoveRecords.
	self FirstStart