specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #screen; add: #inputName height: 30;
			 add: #inputDirector height: 30; add: #inputGenre height: 30]
		origin: 0 @ 0 corner: 0.7 @ 1;
		newColumn: [ :column | column add: #buttonAddActor; add: #buttonAdd; add: #buttonReturn ]
		origin: 0.7 @ 0 corner: 1 @ 1;
		yourself