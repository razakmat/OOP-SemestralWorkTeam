as yet unclassified
CleanAndInit
	"Deletes existing database records and starts anew"
	RealFilm setUpConnection.
	RealFilm RemoveRecords.
	User removeAll.
	Director RemoveRecords.
	Actor removeAll.
	RealFilm Examples1.
	self new openWithSpec