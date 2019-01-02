accessing
idFromDirectorInput: input
	^ (input copyWithRegex: '.*, .*, ID = ' matchesReplacedWith: '') greaseInteger 