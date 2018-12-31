printing
print: aString
	| prev |
	prev := self data.
	prev add: aString.
	screen items: prev