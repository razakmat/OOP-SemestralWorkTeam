accessing
data
	^ Film selectAll collect: [ :each | 'ID: ',each id greaseString ,', Name: ',each name ]