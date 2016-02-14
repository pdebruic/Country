accessing
get: aQuantity namesForGender: aSymbol
	| url response cName |
	url := HTTPAPIClientUrl newUrlFrom: 'http://api.uinames.com/'.
	cName := countryCode = 'US'
		ifTrue: [ 'United States' ]
		ifFalse: [ countryName ].
	url queryAt: 'region' put: cName.
	url queryAt: 'amount' put: aQuantity.
	(aSymbol = 'male' or: [ aSymbol = 'female' ])
		ifTrue: [ url queryAt: 'gender' put: aSymbol ].
	[ response := HTTPAPIClient httpClient get: url ]
		on: Error
		do: [ :ex | ^ '[{"name":"New", "surname":"Person"}]' ].
	^ response