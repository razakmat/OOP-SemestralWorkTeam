specs
defaultSpec
	<spec: #default>
	^ SpecRowLayout composed
		newColumn: [ :column | column 
	newRow: [:row | row add: #text] origin: 0 @ 0 corner: 0.3 @ 1;
newRow: [:row | row newColumn: [:column1| column1 add: #buttonYes]; newColumn: [:column2| column2 add: #buttonNo] ] origin: 0.5 @ 0 corner: 0.8 @ 1]
	