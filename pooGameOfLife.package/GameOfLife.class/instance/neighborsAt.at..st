private
neighborsAt: aRow at: aColumn
	"Returns a set with the eight neighbours of the cell at that position"
	| neighborsPoints neighbors|
	neighborsPoints:= (aRow@aColumn) eightNeighbors.
	neighbors:= Bag new.
	neighborsPoints collect: [ :point | ((grid at: (point x) at: (point y) ifInvalid: nil) isNil) ifFalse: [neighbors add: (grid at: (point x) at: (point y))] ].
	^ neighbors.