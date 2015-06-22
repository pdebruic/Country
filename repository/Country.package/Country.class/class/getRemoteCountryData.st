as yet unclassified
getRemoteCountryData
	| countryXml |
	[ countryXml := XMLDOMParser parse: self getXMLISOData contents ]
		on: NameLookupFailure
		do: [ 
			Transcript show: 'no network connection'.
			^ self ].
	CountryList := SortedCollection new.
	countryXml firstNode nodes
		do: [ :each | 
			| newCountry |
			newCountry := self new.
			newCountry countryName: (each attributeAt: 'name').
			newCountry countryCode: (each attributeAt: 'alpha-2').
			CountryList add: newCountry ]