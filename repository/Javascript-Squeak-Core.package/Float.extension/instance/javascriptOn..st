*Javascript-Squeak-Core
javascriptOn: aStream
	self isNaN ifTrue: [
		^ aStream nextPutAll: 'NaN' ].
	self isInfinite ifTrue: [
		^ aStream nextPutAll: (self positive ifTrue: [ 'Infinity' ] ifFalse: [ '-Infinity' ]) ].
	super javascriptOn: aStream