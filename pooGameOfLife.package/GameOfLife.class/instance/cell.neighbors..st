private
cell: Acell neighbors: neighbors
	"Returns a cell either alive or dead, depending on its neighbours "
	| newCell livingNeighbors|
	newCell:= Acell. 
	livingNeighbors:= neighbors count: [ :cell | cell isAlive = True ]. 
	(Acell isAlive = True) & (livingNeighbors < 2) ifTrue: [ newCell:= Cell alive: False ].
	(Acell isAlive = True) & (livingNeighbors > 3) ifTrue: [ newCell:= Cell alive: False ].
	(Acell isAlive = True) & ((livingNeighbors = 2) | (livingNeighbors = 3)) ifTrue: [ newCell:= Cell alive: True ].
	(Acell isAlive = False) & (livingNeighbors = 3) ifTrue: [ newCell:= Cell alive: True ].
	^newCell.