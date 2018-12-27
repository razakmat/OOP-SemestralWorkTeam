specs
defaultSpec
	^ SpecColumnLayout composed
	newRow: [:r | r newColumn: [:c | c add: #byID ; add: #byGenre ] ]
