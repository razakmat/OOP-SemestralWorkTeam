accessing
data
	^ RealFilm selectAll
		collect: [ :each | 
			'ID: ' , each id greaseString , Character tab asString , ',  Name: ' , each name
				, Character tab asString , ',  genre: ' , each genre asString ]