private
voyageRootsInObject: anObject excluding: excludes do: aBlock
	anObject class isVoyageRoot
		ifTrue: [ aBlock cull: anObject ].
	excludes add: anObject.
	anObject class allInstVarNames
		do: [ :ivar | 
			| val |
			val := anObject instVarNamed: ivar.
			(val isNotNil and: [ (excludes includes: val) not ])
				ifTrue: [ excludes add: val.
					self voyageRootsIn: val excluding: excludes do: aBlock ] ]