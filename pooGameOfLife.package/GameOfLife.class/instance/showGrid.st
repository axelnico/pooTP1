accesing
showGrid
	
	| matrix |
	matrix:= grid collect: [ :cell | cell isAlive ].
	^ matrix