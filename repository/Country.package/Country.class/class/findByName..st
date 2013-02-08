as yet unclassified
findByName: aName
	^ self countryList detect: [ :each | each countryName = aName ] ifNone: [ nil ]