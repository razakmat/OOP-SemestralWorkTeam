as yet unclassified
idFromDirectorInput: input
	^ (input copyWithRegex: '.*, .*, ID = ' matchesReplacedWith: '') greaseInteger 