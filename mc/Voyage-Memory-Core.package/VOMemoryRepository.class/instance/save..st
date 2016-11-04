persistence
save: anObject
	splitRoots
		ifTrue: [ self voyageRootsIn: anObject excluding: nil do: [ :each | (self list: each class) add: each ] ]
		ifFalse: [ (self list: anObject class) add: anObject ].
	^ anObject