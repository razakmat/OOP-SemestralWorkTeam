accessing
data
	^ RealFilm selectAll collect: [ :each | 'ID: ',each id greaseString ,', Name: ',each name ]