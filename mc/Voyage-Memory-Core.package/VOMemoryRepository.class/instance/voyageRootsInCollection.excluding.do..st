private
voyageRootsInCollection: anObject excluding: excludes do: aBlock
	anObject
		do: [ :each | 
			(excludes includes: each)
				ifFalse: [ excludes add: each.
					self voyageRootsIn: each excluding: excludes do: aBlock ] ]