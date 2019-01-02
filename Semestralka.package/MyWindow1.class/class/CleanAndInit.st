as yet unclassified
CleanAndInit
	"Deletes existing database records and starts anew"
	User removeAll.
	Director RemoveRecords.
	RealFilm RemoveRecords.
	self FirstStart