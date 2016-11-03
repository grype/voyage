private
voyageRootsIn: anObject excluding: excludeSet
	| results |
	results := Set new.
	self voyageRootsIn: anObject excluding: excludeSet do: [ :each | results add: each ].
	^ results