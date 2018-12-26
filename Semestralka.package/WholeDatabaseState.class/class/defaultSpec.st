specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #screen; add: #input height: 30 ]
		origin: 0 @ 0 corner: 0.7 @ 1;
		newColumn: [ :column | column add: #buttonAdd; add: #buttonRemove; add: #buttonSearch  ]
		origin: 0.7 @ 0 corner: 1 @ 1;
		yourself
		