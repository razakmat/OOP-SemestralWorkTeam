accessing
selectedNickOnScreen
	^ screen selectedItem copyWithRegex: '.*\: ' matchesReplacedWith: ''