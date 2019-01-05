specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #buttonYes]
		origin: 0 @ 0 corner: 0.7 @ 1;
		newColumn: [ :column | column add: #buttonNo ]
		origin: 0.7 @ 0 corner: 1 @ 1;
		yourself