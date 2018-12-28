specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #inputLogin height: 30; add: #inputPassword height: 30;
				add: #buttonSignUp height: 40]
		origin: 0.25 @ 0.35 corner: 0.75 @ 0.65;
		yourself
		