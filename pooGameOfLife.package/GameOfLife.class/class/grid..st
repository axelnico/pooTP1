initialization
grid: aGridOfCells
	"creates a new game with the matrix of cells passed"
	| newGameOfLife |
	newGameOfLife := self new.
	newGameOfLife grid: aGridOfCells.
	^ newGameOfLife.