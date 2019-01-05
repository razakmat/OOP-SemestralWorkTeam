accessing
data
	^ (RealFilm selectAll asOrderedCollection sort: [ :a :b | a id < b id ]) 
		collect: [ :each | 
			'ID: ' , each id greaseString , Character tab asString , ',  Name: ' , each name
				, Character tab asString , ',  genre: ' , each genre asString ]