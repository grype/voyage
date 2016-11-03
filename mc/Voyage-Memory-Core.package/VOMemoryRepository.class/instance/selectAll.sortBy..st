persistence
selectAll: aClass sortBy: sortBlock
	^sortBlock
		ifNotNil: [ (self listOf: aClass) asSortedCollection: sortBlock ] 
		ifNil: [ self listOf: aClass ]