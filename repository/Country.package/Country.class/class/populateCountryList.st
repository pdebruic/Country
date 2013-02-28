as yet unclassified
populateCountryList
	| countryXml |
	countryXml := XMLDOMParser parse: (HTTPSocket httpGetDocument: self isoXmlUrl) contents.
	CountryList := SortedCollection new.
	countryXml firstNode nodes
		do: [ :each | 
			| newCountry |
			newCountry := self new.
			newCountry countryName: each nodes first strings first.
			newCountry countryCode: each nodes second strings first.
			CountryList add: newCountry ].
	self addCurrencies