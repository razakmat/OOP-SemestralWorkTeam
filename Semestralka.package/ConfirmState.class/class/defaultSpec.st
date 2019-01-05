specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
newRow: [:row | row add: #text];
newRow: [:row | row newColumn: [:column| column add: #buttonYes]; newColumn: [:column| column add: #buttonNo] ]