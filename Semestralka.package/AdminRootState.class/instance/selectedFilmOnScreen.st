printing
selectedFilmOnScreen
	^ (screen selectedItem copyWithRegex: '(ID\: |, Name\:.*)' matchesReplacedWith: '') greaseInteger 
	