accesing
computeNextGeneration
	"Computes the next generation of cells"
	grid:= grid collect: [ :c | self cell:c neighbors: (self neighborsAt: (grid indexOf: c) x at: (grid indexOf: c) y ) ].