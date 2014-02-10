as yet unclassified
addCurrencies
	(Smalltalk at: #Currency) notNil
		ifTrue: [ self countryList do: [ :eachCountry | eachCountry currency: (Currency getFromCountryName: eachCountry countryName) ] ]