*Seaside-Swagger-Core
swaggerPath
	| swaggerPathString |
	swaggerPathString := pathMatches first swaggerPathString.
	"ensure path begins with /"
	^ (swaggerPathString isEmpty or: [ swaggerPathString first ~= $/ ])
		ifTrue:[ '/', swaggerPathString ]
		ifFalse:[ swaggerPathString ]