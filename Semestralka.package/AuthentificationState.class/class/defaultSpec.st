specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | column add: #credentialsField height: 40;
			add: #inputLogin height: 40; add: #inputPassword height: 40;
				add: #buttonSignUp height: 40]
		origin: 0.25 @ 0.3 corner: 0.75 @ 0.7;
		yourself
		