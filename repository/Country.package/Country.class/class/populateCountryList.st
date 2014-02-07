as yet unclassified
populateCountryList
	self useRemoteData
		ifTrue: [ self getRemoteCountryData ]
		ifFalse: [ 
			CountryList := self countryListArray
				collect: [ :each | 
					Country new
						countryName: each first;
						countryCode: each second;
						yourself ] ].
	self addCurrencies