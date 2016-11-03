persistence
save: anObject
	self voyageRootsIn: anObject excluding: nil do: [ :each | (self list: each class) add: each ].
	^ anObject