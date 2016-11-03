private
voyageRootsIn: anObject excluding: excludeSet do: aBlock
	| excludes |
	excludes := excludeSet ifNil: [ Set new ] ifNotNil: [ excludeSet ].
	
	^ ((anObject isKindOf: Collection) and: [ anObject class collectsVoyageRoots ])
		ifTrue: [ self voyageRootsInCollection: anObject excluding: excludes do: aBlock]
		ifFalse: [ self voyageRootsInObject: anObject excluding: excludes do: aBlock]