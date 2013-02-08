as yet unclassified
findByTwoLetterCode: aTwoLetterCode
	^ self countryList detect: [ :each | each countryCode = aTwoLetterCode ] ifNone: [ self usa ]