specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				add: #screen;
				add: #input height: 30 ]
			origin: 0 @ 0
			corner: 0.7 @ 1;
		newColumn: [ :column | 
			column
				add: #buttonViewFilm;
				add: #buttonSearch;
				add: #buttonSignOut ]
			origin: 0.7 @ 0
			corner: 1 @ 1;
		yourself