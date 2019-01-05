specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column newRow: 
													[:row | row add: #buttonUsers;
																	add: #buttonRemove] height: 60;
									         add: #screen; add: #input height: 30 ]
		origin: 0 @ 0 corner: 0.7 @ 1;
		newColumn: [ :column | column add: #buttonAddFilm; add: #buttonAddActor; add: #buttonAddDirector; add: #buttonSearch ; add: #buttonSignOut ]
		origin: 0.7 @ 0 corner: 1 @ 1;
		yourself
		