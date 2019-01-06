specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #screen ] origin: 0 @ 0 corner: 0.7 @ 1;
		newColumn: [ :column | 
			column
				add: #buttonReturn;
				add: #buttonDelete;
				add: #buttonChangeRole ]
			origin: 0.7 @ 0
			corner: 1 @ 1;
		yourself