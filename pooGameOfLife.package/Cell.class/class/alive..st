initialization
alive: aState

	| newCell |
	
	newCell := self new.
	newCell alive: aState.
     ^newCell
	