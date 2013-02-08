as yet unclassified
addCurrencies
	(Smalltalk at: #Currency) notNil
		ifTrue: [ CountryList do: [ :eachCountry | eachCountry currency: (Currency getFromCountryName: eachCountry countryName) ] ]